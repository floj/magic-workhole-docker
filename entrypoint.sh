#!/usr/bin/env bash
set -e

[[ -z $SU_UID ]] || usermod -u "$SU_UID" app
[[ -z $SU_GID ]] || groupmod -g "$SU_GID" app

exec sudo -E -H -u "#${SU_UID:-$(id -u)}" -g "#${SU_GID:-$(id -g)}" "$@"
