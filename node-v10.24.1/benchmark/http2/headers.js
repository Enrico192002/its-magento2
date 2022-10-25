'use strict';

const common = require('../common.js');
const PORT = common.PORT;

const bench = common.createBenchmark(main, {
  n: [1e3],
  nheaders: [0, 10, 100, 1000],
  benchmarker: ['h2load']
}, { flags: ['--no-warnings', '--expose-http2'] });

function main({ n, nheaders }) {
  const http2 = require('http2');
  const server = http2.createServer({
    maxHeaderListPairs: 20000
  });

  const headersObject = {
    ':path': '/',
    ':scheme': 'http',
    'accept-encoding': 'gzip, deflate',
    'accept-language': 'en',
    'content-type': 'text/plain',
    'referer': 'https://example.org/',
    'user-agent': 'SuperBenchmarker 3000'
  };

  for (var i = 0; i < nheaders; i++) {
    headersObject[`foo${i}`] = `some header value ${i}`;
  }

  server.on('stream', (stream) => {
    stream.respond();
    stream.end('Hi!');
  });
  server.listen(PORT, () => {
    const client = http2.connect(`http://localhost:${PORT}/`, {
      maxHeaderListPairs: 20000
    });

    function doRequest(remaining) {
      const req = client.request(headersObject);
      req.resume();
      req.on('end', () => {
        if (remaining > 0) {
          doRequest(remaining - 1);
        } else {
          bench.end(n);
          server.close();
          client.destroy();
        }
      });
    }

    bench.start();
    doRequest(n);
  });
}
