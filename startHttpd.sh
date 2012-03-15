#!/bin/bash
# Starts the server (on port 8000) with the home page inside `docRoot`. After the core server is initialized it will
# source all the files in the `library`. This code can add new URL domains, document handlers, etc. 
tclsh8.5 tclhttpd3.5.1/bin/httpd.tcl -debug 1 -port 8000 -docRoot assets/page -library server 
