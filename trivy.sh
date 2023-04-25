#!/bin/bash

docker build -t oring/edge-ems-deploy-client:develop $1
curl -LJO https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/html.tpl
trivy image --format template --template "@html.tpl" -o $1/report.html oring/edge-ems-deploy-client:develop
rm -f html.tpl
