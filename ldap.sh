#!/bin/bash

out1=$(ssh -i root centos@8.43.87.218 "systemctl status slapd | grep -i Active")

if [[ $out1 == *(running)* ]]; then
 echo "ldap is running"
else
 echo "ldap is not running"
fi
