#!/bin/bash
counter=1
maxValue=5
while [ $counter -le $maxValue ]
do
  curl --location --request POST 'http://shibu-foo.sandbox.cloud.adobe.io/foo/proxy' --header 'Content-Type: application/json' --data-raw '{"url":"https://google.com"}'
  ((counter++))
done

counter=1
while [ $counter -le $maxValue ]
do
  curl --location --request POST 'http://shibu-foo.sandbox.cloud.adobe.io/foo/proxy' --header 'Content-Type: application/json' --data-raw '{"url":"http://bar-service.ns-personal-shibmish.svc.cluster.local/bar/hello"}'
  ((counter++))
done

counter=1
while [ $counter -le $maxValue ]
do
  curl --location --request POST 'http://shibu-foo.sandbox.cloud.adobe.io/foo/proxy' --header 'Content-Type: application/json' --data-raw '{"url":"http://shibu-bar.sandbox.cloud.adobe.io/bar/hello"}'
  ((counter++))
done

counter=1
while [ $counter -le $maxValue ]
do
  curl --location --request POST 'http://shibu-foo.sandbox.cloud.adobe.io/foo/proxy' --header 'Content-Type: application/json' --data-raw '{"url":"https://k8slighthousesvc-dev-va6.adobe.io/bar/hello?api_key=asrexample"}'
  ((counter++))
done

counter=1
while [ $counter -le $maxValue ]
do
    curl --location --request POST 'http://shibu-foo.sandbox.cloud.adobe.io/foo/proxy' --header 'Content-Type: application/json' --data-raw '{"url":"http://foo-friend-service.ns-personal-shibmish.svc.cluster.local/bar/hello"}'
    ((counter++))
done
