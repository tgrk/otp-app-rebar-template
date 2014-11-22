#!/bin/bash

erl -remsh {{short}}@$(hostname) -sname {{short}}_$RANDOM@$(hostname)
