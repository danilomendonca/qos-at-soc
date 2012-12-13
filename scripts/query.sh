#!/bin/sh

dbname="d4ijrg8h6jgmnb"
username="rldfcbwzrztwrt"
password="lnO_pOSCGg-6gLRIacatMo_RXw"

host="ec2-54-243-62-232.compute-1.amazonaws.com"

psql $dbname --username $username --password=$password --host=$host << EOF

SELECT * FROM test;
EOF
