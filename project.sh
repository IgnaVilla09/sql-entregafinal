#!bin/bash

mysql \
-u root \
-p123 \
--local-infile=1 \
--host 127.0.0.1 \
--port 3306 -e "source database_ddl.sql; source database-populate.sql;" 


data=""

for file in ./sql-objects/*
do
	echo "process start"
	if [ -f "$file" ]; then
		echo "execution in progress $file"
		data+="source $file ; " 
	fi
done

mysql -u root -p123 --host 127.0.0.1 --port 3306 -e "$data"
mysql -u root -p123 --host 127.0.0.1 --port 3306 -e "show procedure status where db='gestioninscripcion'; \
	show function status where db='gestioninscripcion'; \
	select trigger_schema, trigger_name from information_schema.triggers where information_schema.triggers.trigger_schema like 'gestioninscripcion'; \
	SHOW FULL TABLES IN gestioninscripcion WHERE TABLE_TYPE LIKE 'VIEW'; "