#!/bin/sh
scp /projects/DSpace-Docker-Images/add-ons/solr_localhost/web6.xml root@dspace:/dspace/webapps/solr/WEB-INF/web.xml
scp /projects/DSpace-Docker-Images/add-ons/rest_http/web6.xml root@dspace:/dspace/webapps/rest/WEB-INF/web.xml
mkdir /tmp/aip-dir
mkdir /tmp/ingest-tools
scp -r /tmp/aip-dir root@dspace:/
scp -r /tmp/ingest-tools root@dspace:/
rmdir /tmp/aip-dir
rmdir /tmp/ingest-tools
scp /projects/DSpace-Docker-Images/add-ons/mount_ingest_tools/* root@dspace:/ingest-tools
scp /projects/DSpace-Docker-Images/add-ons/sample-aip-files/DogPhotosAIP/* root@dspace:/aip-dir
