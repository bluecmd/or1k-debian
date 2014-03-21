#!/bin/bash

set -e
cd $(dirname $0)

PROJECT="bluecmd0"
NAME="openrisc-builder"
MACHINE_NAME="${NAME}-${1?}"
ZONE="europe-west1-a"
MACHINE="n1-highcpu-16"
GIT_BASE="https://github.com/bluecmd"

eval $(ssh-agent)
ssh-add ~/.ssh/google_compute_engine

gcutil adddisk --source_snapshot=${NAME} --zone=${ZONE} ${MACHINE_NAME}
gcutil addinstance \
  --service_version="v1" \
  --project="$PROJECT" \
  "${MACHINE_NAME}" \
  --zone="$ZONE" \
  --machine_type="$MACHINE" \
  --network=default \
  --external_ip_address=ephemeral \
  --disk="${MACHINE_NAME}"
  --persistent_boot_disk=true \
  --noautomatic_restart \
  --on_host_maintenance=migrate \
  --wait_until_running

echo "Waiting 30 seconds for sshd to start"
sleep 30

gcutil push ${2?} /tmp
gcutil ssh "${MACHINE_NAME}" ./cloud-build.sh "/tmp/$2"
