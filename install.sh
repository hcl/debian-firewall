#!/bin/bash

set -e

mkdir -p /etc/iptables
cp ./rules.v* /etc/iptables
cp ./iptables /etc/network/if-pre-up.d

iptables -nvL --line-number
ip6tables -nvL --line-number