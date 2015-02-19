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
function interact-with-version {
    local -r orig=$(version)
    interact version
    interact update-version 9.9.9
    interact version
    update-version $orig
}
function interact-with-dependencies {
    local -r dependency="$1"
    local -r file="$2"
    local -r origver=$(grep $dependency $file | dependency-parse | dependency-extract-part version)
    interact grep $dependency $file
    interact update-dependency $dependency 9.9.9
    interact grep $dependency $file
    update-dependency $dependency $origver
}


# START INTERACTING

switch-to gradle-library
interact status-for is-gradle
interact project-dir
interact project-name
interact project-group
interact project-artifact
interact container-version
interact-with-version
interact-with-dependencies groovy-all build.gradle


separate-project-output
switch-to playframework-2.2.1-project
interact status-for is-playframework
interact status-for is-playframework-lt23
interact project-dir
interact project-name
interact container-version
interact-with-version
interact-with-dependencies scalaz-core project/Build.scala


separate-project-output
switch-to maven-project
interact status-for is-maven
interact project-dir
interact project-name
interact project-group
interact project-artifact

newline
exit 0
