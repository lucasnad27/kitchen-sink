#!/bin/bash

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install python-software-properties --yes

export POSTGRES_VERSION=9.2
echo "Installing postgres"

if [ "${POSTGRES_VERSION}" = "9.2" ]; then
    add-apt-repository ppa:pitti/postgresql --yes
    apt-get update
fi

apt-get -y install postgresql-${POSTGRES_VERSION} \
    postgresql-server-dev-${POSTGRES_VERSION}

echo "Installing apache"

apt-get -y install apache2 libapache2-mod-wsgi