#!/bin/bash

# Variables
SQL="~/proj/postgresql/scripts/sql"
DB="er_fire"

# Create database
psql -f $SQL/create-db-er_fire.sql -v db=$DB


# Create data tables
psql -f $SQL/create-table-agency.sql $DB
psql -f $SQL/create-table-alarmlevel.sql $DB
psql -f $SQL/create-table-incident.sql $DB
psql -f $SQL/create-table-incsitfoundclass.sql $DB
psql -f $SQL/create-table-incsitfound.sql $DB
psql -f $SQL/create-table-incsitfoundsub.sql $DB
psql -f $SQL/create-table-inctimes.sql $DB
psql -f $SQL/create-table-mutualaid.sql $DB
psql -f $SQL/create-table-responder.sql $DB
psql -f $SQL/create-table-responderunit.sql $DB
psql -f $SQL/create-table-situationfound.sql $DB
psql -f $SQL/create-table-station.sql $DB
psql -f $SQL/create-table-timedesc.sql $DB
psql -f $SQL/create-table-typenaturecode.sql $DB
