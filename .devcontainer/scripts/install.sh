#!/usr/bin/env bash
set -euo pipefail

# update the package database
pacman -Syy

# install the packages
pacman -S --noconfirm \
    base-devel \
    git \
    gcc \
    gdb \
    cmake \
    clang \
    make \
    helix \
    rust \
    inetutils \
    traceroute \
    openbsd-netcat \
    iproute2 \
    vim \
    github-cli

# `clang` include `clangd`
# `vim` includes `xxd`

# [inetutils]
# - ftp
# - telnet, telnetd
# - rcp
# - rsh
# - rlogin
# - talk
# - syslogd
# - ping
# - logger
# - hostname
# - dnsdomainname
# - tftp

# [openbsd-netcat]
# - nc(=netcat)

# [traceroute]

# [net-tools]
# ------------------------------------------------------------
# - ifconfig
# - netstat
# - nameif
# - route
# - arp
# - mii-tool
# - iptunnel
# ------------------------------------------------------------

# `iproute2`
# `iproute2` includes `ip`, `ss`
# it replaces many tools in net-tools
# ------------------------------------------------------------
# ifconfig -> ip addr show, ip link
# arp -> ip neigh
# route -> ip route
# iptunnel -> ip tunnel
# nameif -> ip link set
# netstat -> ss
# ------------------------------------------------------------
