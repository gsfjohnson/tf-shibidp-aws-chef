#!/bin/bash

hostnamectl set-hostname ${fqdn}

if [ "$(echo ${environment} | tr '[:upper:]' '[:lower:]' )" == "development" ]; then
  echo "catch update issues in test phase, skip in dev for speed"
else
  yum -y update
fi
