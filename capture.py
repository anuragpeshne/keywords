#!/usr/bin/env python

import re
import fileinput

startPattern = re.compile('/C(\d)[ "]' + '.*' +
                          '(?:keyword)' + '|' +
                          '(?:reserved)' + '|' +
                          '(?:command)',
                          re.IGNORECASE)

endSection = None
for line in fileinput.input():
    if endSection is None:
        match = startPattern.search(line)
        if match is not None:
            section = match.group(1)
            if section is None:
                endSection = re.compile('/C\d')
            else:
                endSection = re.compile('/C' + str(int(section) + 1))
    else:
        match = endSection.search(line)
        if match is None:
            print line,
        else:
            break
