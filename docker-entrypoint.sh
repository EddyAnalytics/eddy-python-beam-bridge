#!/bin/bash

# Turn off posix mode since it does not allow process substitution
set +o posix

if [ "$1" = 'eddy-python-beam-bridge' ]; then
    exec celery worker -A app -l INFO -Q beam-python
fi

exec "$@"
