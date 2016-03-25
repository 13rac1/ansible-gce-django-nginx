#!/bin/bash

set -e

cd /opt/django
exec /usr/local/bin/gunicorn hello_world.wsgi --user=django --group=django -b 0.0.0.0:80
