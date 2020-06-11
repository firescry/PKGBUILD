#!/bin/bash

set -e

for PKGBUILD in $(find ${GITHUB_WORKSPACE} -name PKGBUILD -type f | sort); do
    cd $(dirname ${PKGBUILD})
    makepkg --packagelist
done
