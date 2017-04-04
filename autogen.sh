#!/bin/sh
# Run this to set up the package for configuring.

run()
{
    echo "Running '$@'"
    eval "$@"
}

echo
run autoheader && aclocal && run automake -a -c -f && run autoconf || exit 1
echo
echo Now run \'./configure\'
