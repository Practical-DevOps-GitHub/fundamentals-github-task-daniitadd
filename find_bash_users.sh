#!/bin/bash

FILE=${1:-/etc/passwd}

if [ ! -f "$FILE" ]; then
    echo "Error"
    exit 1
fi

echo "Users in file $FILE:"

grep '/bin/bash$' "$FILE" | cut -d: -f1
