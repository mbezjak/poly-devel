#!/bin/bash
#

awk -F= '/currentVersion=/{print $2}' bin/foobar.sh
