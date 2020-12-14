#!/bin/bash
rm -rf *.log
duration=300s
users=3
docker run -i loadimpact/k6 run --vus $users --duration $duration - <loadgen/io-external.js >> io-external.log &
docker run -i loadimpact/k6 run --vus $users --duration $duration - <loadgen/east-west.js >> east-west.log &
docker run -i loadimpact/k6 run --vus $users --duration $duration - <loadgen/ethos-public.js >> ethos-public.log &
docker run -i loadimpact/k6 run --vus $users --duration $duration - <loadgen/sample-delay.js >> sample-delay.log &
docker run -i loadimpact/k6 run --vus $users --duration $duration - <loadgen/foo-friend.js >> foo-friend.log &
