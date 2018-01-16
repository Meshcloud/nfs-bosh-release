#!/bin/bash
set -e 

path=$(dirname $0)

cd $path
bosh create-release --force

bosh upload-release

bosh -d nfs deploy -n manifests/nfs-dev-local.yml