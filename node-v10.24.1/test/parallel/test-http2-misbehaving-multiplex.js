'use strict';
// Flags: --expose-internals

const common = require('../common');
const assert = require('assert');

if (!common.hasCrypto)
  common.skip('missing crypto');

const h2 = require('http2');
const net = require('net');
const { NghttpError } = require('internal/http2/util');
const h2test = require('../common/http2');
let client;

const server = h2.createServer();
let gotFirstStreamId1;
server.on('stream', common.mustCall((stream) => {
  stream.respond();
  stream.end('ok');

  // Http2Server should be fast enough to respond to and close
  // the first streams with ID 1 and ID 3 without errors.

  // Test for errors in 'close' event to ensure no errors on some streams.
  stream.on('error', () => {});
  stream.on('close', (err) => {
    if (stream.id === 1) {
      if (gotFirstStreamId1) {
        // We expect our outgoing frames to fail on Stream ID 1 the second time
        // because a stream with ID 1 was already closed before.
        common.expectsError({
          constructor: NghttpError,
          code: 'ERR_HTTP2_ERROR',
          message: 'Stream was already closed or invalid'
        });
        return;
      }
      gotFirstStreamId1 = true;
    }
    assert.strictEqual(err, undefined);
  });

  // Stream ID 5 should never reach the server
  assert.notStrictEqual(stream.id, 5);

}, 2));

server.on('session', common.mustCall((session) => {
  session.on('error', common.expectsError({
    code: 'ERR_HTTP2_ERROR',
    type: NghttpError,
    message: 'Stream was already closed or invalid'
  }));
}));

const settings = new h2test.SettingsFrame();
const settingsAck = new h2test.SettingsFrame(true);
// HeadersFrame(id, payload, padding, END_STREAM)
const id1 = new h2test.HeadersFrame(1, h2test.kFakeRequestHeaders, 0, true);
const id3 = new h2test.HeadersFrame(3, h2test.kFakeRequestHeaders, 0, true);
const id5 = new h2test.HeadersFrame(5, h2test.kFakeRequestHeaders, 0, true);

server.listen(0, () => {
  client = net.connect(server.address().port, () => {
    client.write(h2test.kClientMagic, () => {
      client.write(settings.data, () => {
        client.write(settingsAck.data);
        // Stream ID 1 frame will make it OK.
        client.write(id1.data, () => {
          // Stream ID 3 frame will make it OK.
          client.write(id3.data, () => {
            // A second Stream ID 1 frame should fail.
            // This will cause an error to occur because the client is
            // attempting to reuse an already closed stream. This must
            // cause the server session to be torn down.
            client.write(id1.data, () => {
              // This Stream ID 5 frame will never make it to the server
              client.write(id5.data);
            });
          });
        });
      });
    });
  });

  // An error may or may not be emitted on the client side, we don't care
  // either way if it is, but we don't want to die if it is.
  client.on('error', () => {});
  client.on('close', common.mustCall(() => server.close()));
  client.resume();
});
