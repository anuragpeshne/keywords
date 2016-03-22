#!/bin/bash

for filename in ./wordfiles/*.uew; do
    echo -n "$filename"
    ./capture.py "$filename" | wc -w
done
