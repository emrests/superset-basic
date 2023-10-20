#!/bin/bash

# belirtmiş olduğumuz bilgiler ile kullanıcı oluşturulması
superset fab create-admin --username "$ADMIN_USERNAME" --firstname Superset --lastname Admin --email "$ADMIN_EMAIL" --password "$ADMIN_PASSWORD"

# Upgrading Superset metastore
superset db upgrade

#ornek veriler
superset load_examples

# rol ve yetkiler
superset superset init 

# Başlat
/bin/sh -c /usr/bin/run-server.sh