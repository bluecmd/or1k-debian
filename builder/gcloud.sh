#!/bin/bash

set -e
workfile=$(readlink -f ${2?})
cd $(dirname $0)

PROJECT="bluecmd0"
NAME="openrisc-builder"
MACHINE_NAME="${NAME}-${1?}"
ZONE="europe-west1-a"
MACHINE="n1-highcpu-8"
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
  --disk="${MACHINE_NAME},deviceName=primarydisk,mode=rw,boot" \
  --persistent_boot_disk=true \
  --noautomatic_restart \
  --on_host_maintenance=migrate \
  --wait_until_running

echo "Waiting 30 seconds for sshd to start"
sleep 30

gcutil push "${MACHINE_NAME}" ${workfile} /tmp/worklist
gcutil ssh "${MACHINE_NAME}" ./cloud-build.sh /tmp/worklist
