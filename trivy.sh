#!/bin/bash

docker build -t oring/edge-ems-deploy-client:develop $1
trivy image --format template --template "@/usr/local/share/trivy/templates/html.tpl" -o $1/report.html oring/edge-ems-deploy-client:develop
