#!/bin/bash


echo 'Setting up logfile'
LOGFILE=/home/vagrant/provision_script.log
DBLOG=/home/vagrant/db.log
echo > $LOGFILE
echo > $DBLOG


# change log file owner to vagrant
chown vagrant:vagrant $LOGFILE


# Add postgis to list of trusted repositories
echo 'Adding postgis to list of trusted repositories...'
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt trusty-pgdg main" >> /etc/apt/sources.list'
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add - &> $LOGFILE

echo 'Updating apt-get...'
apt-get update -y &> $LOGFILE
apt-get upgrade -y &> $LOGFILE


# install apt packages

echo 'Installing Firefox...'
apt-get install -y firefox &> $LOGFILE
echo 'Installing PostgreSQL 9.5...'
apt-get install -y postgresql-9.5-postgis-2.2 &> $LOGFILE
echo 'Installing pgadmin3...'
apt-get install -y pgadmin3 &> $LOGFILE
echo 'Installing pgRouting 2.1...'
apt-get install -y postgresql-9.5-pgrouting &> $LOGFILE
echo 'Installing Python for Postgres...'
apt-get install -y postgresql-plpython3-9.5 &> $LOGFILE
echo 'Installing pip...'
apt-get install -y python-pip &> $LOGFILE
echo 'Upgrading pip...'
pip install --upgrade pip &> $LOGFILE
echo 'Installing dos2unix...'
apt-get install -y dos2unix &> $LOGFILE
echo 'Cleaning up APT...'
apt-get autoremove - &> $LOGFILE


# install Python packages

echo 'Installing csvkit...'
pip install csvkit &> $LOGFILE         # for commands 'csvsql' and 'csvstat'


# run secondary script as user vagrant

echo 'Running scripts as user vagrant...'
su vagrant -c 'bash ~vagrant/proj/provision_script_vagrant.sh'


# configure PostgreSQL

# check to see if data is extracted already
if [ ! -f /home/vagrant/proj/data/agency.csv ]
then
  # if no data, extract it
  tar -xf /home/vagrant/proj/data/emrep_sample_data.tar -C /home/vagrant/proj/data/
fi

echo 'Building DB...'
su postgres -c 'bash ~vagrant/proj/postgresql/scripts/bin/build_db.sh'

echo 'Configuring postgres users...'
su postgres -c "psql -c \"CREATE USER viewer WITH NOINHERIT PASSWORD 'fire';\""
su postgres -c "psql -c 'GRANT SELECT ON ALL TABLES IN SCHEMA public TO viewer;' er_fire"

echo 'Setting postgres admin login to password authentication with password "vagrant"...'
bash /home/vagrant/proj/postgresql/scripts/bin/set_auth_md5.sh vagrant



echo ''
echo 'Finished installing packages.'
echo 'Run the following line on your host machine:'
echo '$ vagrant plugin install vagrant-vbguest'
