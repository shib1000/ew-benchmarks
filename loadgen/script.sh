#!/bin/bash
docker run -i loadimpact/k6 run --vus 2 --duration 300s - <loadgen/io-external.js >> io-external.log &
docker run -i loadimpact/k6 run --vus 2 --duration 300s - <loadgen/east-west.js >> east-west.log &
docker run -i loadimpact/k6 run --vus 2 --duration 300s - <loadgen/ethos-public.js >> ethos-public.log &
docker run -i loadimpact/k6 run --vus 2 --duration 300s - <loadgen/sample-delay.js >> sample-delay.log &
docker run -i loadimpact/k6 run --vus 2 --duration 300s - <loadgen/foo-friend.js >> foo-friend.log &
