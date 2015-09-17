#!/bin/sh

STACK=${1:-stack}

pushd lib1
${STACK} clean
${STACK} build
popd

pushd lib2
${STACK} clean
${STACK} build
popd

pushd app
${STACK} clean
${STACK} build
${STACK} exec app
popd
