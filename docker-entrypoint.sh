#!/bin/sh

find /code -type f -name "*.py" | xargs pylint-fail-under --rcfile=/etc/pylintrc "$@"
