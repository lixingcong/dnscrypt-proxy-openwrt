#! /bin/bash

cp package/feeds/packages/libsodium/Makefile /tmp/Makefile_sodium
cp package/feeds/packages/dnscrypt-proxy/Makefile /tmp/Makefile_dnscrypt

echo "patch diff COMMAND: diff -u <OLD> <NEW>"
cd /tmp && exit 0