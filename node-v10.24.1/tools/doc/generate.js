// Copyright Joyent, Inc. and other Node contributors.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit
// persons to whom the Software is furnished to do so, subject to the
// following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.

'use strict';

const fs = require('fs');
const path = require('path');
const unified = require('unified');
const markdown = require('remark-parse');
const remark2rehype = require('remark-rehype');
const raw = require('rehype-raw');
const htmlStringify = require('rehype-stringify');

const html = require('./html');
const json = require('./json');

// Parse the args.
// Don't use nopt or whatever for this. It's simple enough.

const args = process.argv.slice(2);
let filename = null;
let nodeVersion = null;
let outputDir = null;
let apilinks = {};
let versions = {};

args.forEach(function(arg) {
  if (!arg.startsWith('--')) {
    filename = arg;
  } else if (arg.startsWith('--node-version=')) {
    nodeVersion = arg.replace(/^--node-version=/, '');
  } else if (arg.startsWith('--output-directory=')) {
    outputDir = arg.replace(/^--output-directory=/, '');
  } else if (arg.startsWith('--apilinks=')) {
    const linkFile = arg.replace(/^--apilinks=/, '');
    const data = fs.readFileSync(linkFile, 'utf8');
    if (!data.trim()) {
      throw new Error(`${linkFile} is empty`);
    }
    apilinks = JSON.parse(data);
  } else if (arg.startsWith('--versions-file=')) {
    const versionsFile = arg.replace(/^--versions-file=/, '');
    const data = fs.readFileSync(versionsFile, 'utf8');
    if (!data.trim()) {
      throw new Error(`${versionsFile} is empty`);
    }
    versions = JSON.parse(data);
  }
});

nodeVersion = nodeVersion || process.version;

if (!filename) {
  throw new Error('No input file specified');
} else if (!outputDir) {
  throw new Error('No output directory specified');
}


fs.readFile(filename, 'utf8', async (er, input) => {
  if (er) throw er;

  const content = unified()
    .use(markdown)
    .use(html.preprocessText)
    .use(json.jsonAPI, { filename })
    .use(html.firstHeader)
    .use(html.preprocessElements, { filename })
    .use(html.buildToc, { filename, apilinks })
    .use(remark2rehype, { allowDangerousHTML: true })
    .use(raw)
    .use(htmlStringify)
    .processSync(input);

  const basename = path.basename(filename, '.md');

  const myHtml = html.toHTML({ input, content, filename, nodeVersion,
                               versions });
  const htmlTarget = path.join(outputDir, `${basename}.html`);
  fs.writeFileSync(htmlTarget, myHtml);

  const jsonTarget = path.join(outputDir, `${basename}.json`);
  fs.writeFileSync(jsonTarget, JSON.stringify(content.json, null, 2));
});
