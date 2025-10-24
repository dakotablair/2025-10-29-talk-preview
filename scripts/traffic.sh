#!/bin/bash

set -euxo pipefail

cd /darknet
curl -o traffic.jpg https://www.511ny.org/map/Cctv/7180
./darknet detect cfg/yolov3.cfg yolov3.weights traffic.jpg | tee out.txt
wc -l out.txt
NOW=$(date +"%F_%H_%M")
cp out.txt ${OUTPUT_DIRECTORY}/out.txt
cp predictions.jpg ${OUTPUT_DIRECTORY}/predictions.jpg
cp out.txt ${OUTPUT_DIRECTORY}/out.${NOW}.txt
cp predictions.jpg ${OUTPUT_DIRECTORY}/predictions.${NOW}.jpg
