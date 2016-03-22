#!/bin/bash

interestingFiles=('JSON' 'acl' 'actionscript' 'ada95' 'c' 'c-winapi'
                  'c-os2' 'csharp' 'e' 'eiffel' 'escript' 'euphoria' 'falcon'
                  'fortran' 'fortran90' 'fortran95' 'go' 'groovy' 'hugo'
                  'java122' 'java13' 'java14' 'java14jsp' 'javascript' 'js20'
                  'jscript' 'jsp' 'lua' 'lull' 'maple' 'modula' 'modula2' 'oracle11g'
                  'pascal' 'perl' 'php5' 'pl1' 'plsql' 'python26' 'python35'
                  'qbasic' 'ruby' 'rust' 'sap' 'schema' 'scheme' 'small' 'sql'
                  'swift' 'symbian' 'tcl-tk' 'turboc' 'uniscript' 'vb' 'vbdotnet'
                  'vbscript' 'verilog2001' 'vhdl93' 'yaml' 'zillions')

#for filename in ./wordfiles/*.uew; do
for filename in ${interestingFiles[@]}; do
    echo -n "$filename"
    ./capture.py ./wordfiles/"$filename".uew | wc -w
done
