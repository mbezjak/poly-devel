#!/bin/bash
#

set -o errexit

declare -r newversion="$1"

sed -i "s|^\(declare -r currentVersion=\).\+$|\1$newversion|" bin/foobar.sh
sed -i "s|^\(Current project version is\).\+$|\1 $newversion.|" README.md

exit 0
