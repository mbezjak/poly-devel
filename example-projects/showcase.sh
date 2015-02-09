#!/bin/bash
#

set -o errexit

function interact { echo "[$(basename $PWD)] \$ $@"; "$@"; }

cd gradle-library
interact status-for is-gradle
interact project-dir
interact project-name
interact project-group
interact project-artifact
interact container-version
interact version
interact update-version 0.9.9
interact version
interact update-version 0.1
interact grep groovy-all build.gradle
interact update-dependency groovy-all 2.9.9
interact grep groovy-all build.gradle
interact update-dependency groovy-all 2.4.1

exit 0
