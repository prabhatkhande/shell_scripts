#!/bin/bash

SRC_DIR=/home/devops/prabhat/src/
DST_DIR=/home/devops/prabhat/dst/

if [ ! -d "$DST_DIR" ]; then
	mkdir -p "$DST_DIR"
fi

for file in "$SRC_DIR"/*; do
	cp "$file" "$DST_DIR"
done

if [ ! -d "$SRC_DIR" ]; then
	echo "Error: source directory does not exists"
	exit 1
fi
