#!/bin/sh
while true ; do  echo -e "HTTP/1.1 200 OK\n\n $(hostname)" | nc -vv -l -p 9999 -q 1; done
