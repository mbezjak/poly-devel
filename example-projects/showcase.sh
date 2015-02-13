#!/bin/bash
#

set -o errexit

declare -r examples=$(dirname $(readlink -f "$0"))
function switch-to {
    local -r project="$1"
    cd "$examples/$project"
    msg "Switched to: $project"
}
function separate-project-output { newline; newline; }
function interact { echo "[$(basename $PWD)] \$ $@"; "$@"; }

switch-to gradle-library
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


separate-project-output
switch-to maven-project
interact status-for is-maven
interact project-dir
interact project-name
interact project-group
interact project-artifact

newline
exit 0
