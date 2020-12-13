// curl --location --request POST 'http://shibu-foo.sandbox.cloud.adobe.io/foo/proxy' --header 'Content-Type: application/json' --data-raw '{"url":"http://shibu-bar.sandbox.cloud.adobe.io/bar/hello"}'

import http from 'k6/http';
export default function () {
  var url = 'http://shibu-foo.sandbox.cloud.adobe.io/foo/proxy';
  var payload = JSON.stringify({
    url: 'http://shibu-bar.sandbox.cloud.adobe.io/bar/hello',
  });
  var params = {
    headers: {
      'Content-Type': 'application/json',
    },
  };
  http.post(url, payload, params);
}
