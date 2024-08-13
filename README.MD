
# START
docker compose up --build -d

# RUN BABELFISH COMPASS COMANDS
1. docker compose exec -it babelfish_compass bash
2. cd BabelfishCompass
3. ./BabelfishCompass.sh -help

# EXAMPLE
1. BabelfishCompass Northwind-report5 -sqlendpoint <endpoint> -sqllogin <login> -sqlpasswd
<password> -sqldblist Northwind -optimistic -reportoptions xref -rewrite

2. sudo chown -R $USER:$USER data

3. check reports and ddl files

# DATA MIGRATION WITH PGLOADER AND BCP
1. docker compose exec -it pgloader bash
2. /opt/pgloader/build/bin/pgloader --debug loads/sqltopg.conf
3. queryresults/retriever.sh
4. /opt/pgloader/build/bin/pgloader --debug loads/sqltopg_data.conf
