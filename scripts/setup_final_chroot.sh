#!/bin/bash

set -e
source $(dirname $0)/settings.sh

cat > /etc/apt/apt.conf.d/80bootstrap << EOF
Acquire::Check-Valid-Until false;
APT::Get::AllowUnauthenticated true;
EOF

sources_setup
sources_append 'final'

upgrade_system

apt-get install -y gcc-4.8-or1k-linux-gnu g++-4.8-or1k-linux-gnu \
  binutils-multiarch build-essential libc6-dev:or1k
  
