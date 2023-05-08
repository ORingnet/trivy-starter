#!/bin/bash

docker build $*
docker image prune -f

while getopts ":t:" opt
do
  case $opt in
    t)
      tag=$OPTARG;;
  esac
done

trivy image --format template --template "`curl -sL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/html.tpl`" -o ${!#}/report_`date +%Y%m%d%H%M%S`.html $tag
