#!/bin/bash

# Variables
SQL="/home/vagrant/proj/postgresql/scripts/sql"
DB="er_fire"

# Create database
echo 'Creating database er_fire...'
psql -f $SQL/create-db-er_fire.sql -v db=$DB


# Create data tables
echo 'Creating tables...'
echo 'Create alarmlevel:'
psql -f $SQL/create-table-alarmlevel.sql $DB
echo 'Create mutualaid:'
psql -f $SQL/create-table-mutualaid.sql $DB
echo 'Create typenaturecode:'
psql -f $SQL/create-table-typenaturecode.sql $DB
echo 'Create insitfoundclass:'
psql -f $SQL/create-table-incsitfoundclass.sql $DB
echo 'Create incsitfoundsub:'
psql -f $SQL/create-table-incsitfoundsub.sql $DB
echo 'Create incsitfound:'
psql -f $SQL/create-table-incsitfound.sql $DB
echo 'Create incident:'
psql -f $SQL/create-table-incident.sql $DB
echo 'Create agency:'
psql -f $SQL/create-table-agency.sql $DB
echo 'Create station:'
psql -f $SQL/create-table-station.sql $DB
echo 'Create responderunit:'
psql -f $SQL/create-table-responderunit.sql $DB
echo 'Create responder:'
psql -f $SQL/create-table-responder.sql $DB
echo 'Create timedesc:'
psql -f $SQL/create-table-timedesc.sql $DB
echo 'Create inctimes:'
psql -f $SQL/create-table-inctimes.sql $DB
echo 'Create situationfound:'
psql -f $SQL/create-table-situationfound.sql $DB


# Copy data into tables
echo 'Loading data...'
psql -f $SQL/copy-table-alarmlevel.sql $DB
psql -f $SQL/copy-table-mutualaid.sql $DB
psql -f $SQL/copy-table-typenaturecode.sql $DB
psql -f $SQL/copy-table-incsitfoundclass.sql $DB
psql -f $SQL/copy-table-incsitfoundsub.sql $DB
psql -f $SQL/copy-table-incsitfound.sql $DB
psql -f $SQL/copy-table-incident.sql $DB
psql -f $SQL/copy-table-agency.sql $DB
psql -f $SQL/copy-table-station.sql $DB
psql -f $SQL/copy-table-responderunit.sql $DB
psql -f $SQL/copy-table-responder.sql $DB
psql -f $SQL/copy-table-timedesc.sql $DB
psql -f $SQL/copy-table-inctimes.sql $DB
psql -f $SQL/copy-table-situationfound.sql $DB
