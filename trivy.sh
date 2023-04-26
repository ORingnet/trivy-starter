#!/bin/bash

docker build -t oring/edge-ems-deploy-client:develop $1
docker image prune -f
trivy image --format template --template "`curl -sL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/html.tpl`" -o $1/report.html oring/edge-ems-deploy-client:develop
