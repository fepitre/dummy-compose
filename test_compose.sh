#!/bin/sh

set -e

HERE=$(realpath "$(dirname "$0")")

PYTHONPATH=$HERE/../:$PYTHONPATH
PATH=$HERE/../bin:$PATH
export PYTHONPATH PATH

mkdir -p _composes

pungi-koji \
--no-label \
--target-dir="$HERE/_composes" \
--old-composes="$HERE/_composes" \
--config="$HERE/dummy-pungi.conf"
