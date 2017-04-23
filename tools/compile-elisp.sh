#!/bin/sh
emacs -batch -f batch-byte-compile init.el
emacs -batch -f batch-byte-compile ./inits/*.el
