#!/bin/bash

set -euxo pipefail

curl -o /traffic.jpg https://www.511ny.org/map/Cctv/7180

yolo detect predict model=yolo11n.pt source='/traffic.jpg'

NOW=$(date +"%F_%H_%M")
ULTRALYTICS_DIR="/ultralytics/runs/detect/predict/"
cp /traffic.jpg ${OUTPUT_DIRECTORY}/original.jpg
cp ${ULTRALYTICS_DIR}traffic.jpg ${OUTPUT_DIRECTORY}/traffic.jpg
cp ${ULTRALYTICS_DIR}traffic.jpg ${OUTPUT_DIRECTORY}/traffic.${NOW}.jpg
