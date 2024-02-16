#!/bin/bash

set -e

## build ARGs
NCPUS=${NCPUS:--1}

# a function to install apt packages only if they are not installed
function apt_install() {
    if ! dpkg -s "$@" >/dev/null 2>&1; then
        if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
            apt-get update
        fi
        apt-get install -y --no-install-recommends "$@"
    fi
}

apt_install \
    cmake

install2.r --error --skipinstalled -n "$NCPUS" \
    readxl \
    reshape2 \
    here \
    data.table \
    rstatix \
    lsr \
    psych \
    psychometric \
    mirt \
    moments \
    ggplot2 \
    ggthemes \
    gdata \
    writexl \
    openxlsx
