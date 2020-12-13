// curl --location --request POST 'http://shibu-foo.sandbox.cloud.adobe.io/foo/proxy' --header 'Content-Type: application/json' --data-raw '{"url":"http://bar-service.ns-personal-shibmish.svc.cluster.local/bar/hello"}'

import http from 'k6/http';
export default function () {
  var url = 'http://shibu-foo.sandbox.cloud.adobe.io/foo/proxy';
  var payload = JSON.stringify({
    url: 'https://k8slighthousesvc-dev-va6.adobe.io/bar/hello?api_key=asrexample',
  });
  var params = {
    headers: {
      'Content-Type': 'application/json',
    },
  };
  http.post(url, payload, params);
}
