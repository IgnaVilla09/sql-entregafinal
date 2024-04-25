#!bin/bash

mysql \
-u root \
-panderson123! \
--local-infile=1 \
--host 127.0.0.1 \
--port 3306 -e "source database_ddl.sql; source database_populate.sql;" 


data=""

for file in ./sql-objects/*
do
	echo "process start"
	if [ -f "$file" ]; then
		echo "execution in progress $file"
		data+="source $file ; " 
	fi
done

mysql -u root -panderson123! --host 127.0.0.1 --port 3306 -e "$data"
mysql -u root -panderson123! --host 127.0.0.1 --port 3306 -e "show procedure status where db='GestionInscripcion'; \
	show function status where db='GestionInscripcion'; \
	select trigger_schema, trigger_name from information_schema.triggers where information_schema.triggers.trigger_schema like 'GestionInscripcion'; \
	SHOW FULL TABLES IN GestionInscripcion WHERE TABLE_TYPE LIKE 'VIEW'; "