#!/usr/bin/env bash
setsid docker-entrypoint.sh postgres >/dev/fd/1 2>&1 < /dev/fd/1 &

sleep 15
python createdb.py
python app.py