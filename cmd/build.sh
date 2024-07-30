#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TARGETS_DIR="${SCRIPT_DIR}/targets"
mkdir -p ${TARGETS_DIR}

cd ${SCRIPT_DIR}/lsdimms
GOOS=linux GOARCH=amd64 go build -o ${TARGETS_DIR}/lsdimms.linux
GOOS=windows GOARCH=amd64 go build -o ${TARGETS_DIR}/lsdimms.windows.exe
GOOS=darwin GOARCH=amd64 go build -o ${TARGETS_DIR}/lsdimms.darwin

cd  ${SCRIPT_DIR}/lssmbios
GOOS=linux GOARCH=amd64 go build -o ${TARGETS_DIR}/lssmbios.linux
GOOS=windows GOARCH=amd64 go build -o ${TARGETS_DIR}/lssmbios.windows.exe
GOOS=darwin GOARCH=amd64 go build -o ${TARGETS_DIR}/lssmbios.darwin
