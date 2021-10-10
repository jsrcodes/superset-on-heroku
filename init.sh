#!/usr/bin/env bash

set -e
superset db upgrade
superset fab create-admin \
              --username admin \
              --firstname Superset \
              --lastname Admin \
              --email ${SUPERSET_ADMIN_EMAIL} \
              --password ${SUPERSET_ADMIN_PASSWORD}
superset init
