#!/bin/bash

set -e

mkdir -p /etc/iptables
cp ./rules.v* /etc/iptables
cp ./iptables /etc/network/if-pre-up.d

iptables-restore < /etc/iptables/rules.v4
ip6tables-restore < /etc/iptables/rules.v4

iptables -nvL --line-number
ip6tables -nvL --line-number