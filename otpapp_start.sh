#!/bin/bash

erl -pa deps/*/ebin ebin \
    -boot start_sasl \
    -sname {{short}}@$(hostname) \
    -noshell \
    -detached \
    -s {{short}}
