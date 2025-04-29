#!/bin/sh

# risotto theme install

git clone https://github.com/joeroe/risotto themes/risotto && cd themes/risotto
git checkout $(git tag -l | grep '^v[0-9.]*$' | sort -V | tail -n 1)
