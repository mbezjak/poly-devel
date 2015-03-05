#!/bin/bash
#

set -o errexit

declare -r currentVersion=0.1

echo "Demonstrates a project that is not immediately recognized by poly-devel."
echo "But support can be added by implementing appropriate script in 'poly-devel' directory."
echo "Current script version = $currentVersion"

exit 0
