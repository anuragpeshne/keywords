#! /bin/bash

awk '{ sum += $2; n++ } END { if (n > 0) print sum / n; }'
