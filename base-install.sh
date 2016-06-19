#!/bin/bash

hostnamectl set-hostname ${fqdn}

# update in phases test and beyond
[ "$(echo ${environment} | tr '[:upper:]' '[:lower:]' )" != "development" ] && \
  yum -y update
