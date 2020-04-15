#!/usr/bin/env bash
set -euo pipefail
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t floj/magic-wormhole:latest "$script_dir"
