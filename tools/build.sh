#!/bin/bash

set -e

for PKGBUILD in $(find ${GITHUB_WORKSPACE} -name PKGBUILD -type f | sort); do
    echo "Processing ${PKGBUILD}"
    if [[ ${PKGBUILD} =~ rtl8822bu ]]; then
        cd $(dirname ${PKGBUILD})
        extra-x86_64-build -r /root
    else
        echo Skipping
    fi
done
