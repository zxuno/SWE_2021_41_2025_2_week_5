#!/bin/bash

cd "$(dirname "$0")"

for f in files/*; do
  filename=$(basename "$f")
  first_char=${filename:0:1}
  first_char_lower=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')
  mv "$f" "$first_char_lower"/
done
