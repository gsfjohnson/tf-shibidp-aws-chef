#!/bin/bash

hostnamectl set-hostname ${fqdn}

yum -y update
