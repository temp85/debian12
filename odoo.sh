#!/bin/bash
sudo apt install build-essential wget git python3-pip python3-dev python3-venv python3-wheel libfreetype6-dev libxml2-dev libzip-dev libsasl2-dev python3-setuptools libjpeg-dev zlib1g-dev libpq-dev libxslt1-dev libldap2-dev libtiff5-dev libopenjp2-7-dev postgresql wkhtmltopdf -y
sudo su - postgres -c "createuser -s odoo"

cd /
git clone https://www.github.com/odoo/odoo --depth 1 --branch 16.0 odoo

sudo chown -R temp:temp /odoo

cd /odoo
python3 -m venv venv
source venv/bin/activate
pip3 install wheel
pip3 install pandas mysql-connector python-docx python-docx-replace vietnam-number
pip3 install -r ./requirements.txt

deactivate

cp ~/Downloads/debian12/odoo.conf /odoo/


