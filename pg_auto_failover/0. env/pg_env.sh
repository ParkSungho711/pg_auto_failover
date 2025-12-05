# ~/.bash_profile 에 아래 붙여넣기

PGV=16
export PGHOME=/usr/pgsql-$PGV
export PATH=$PGHOME/bin:$PATH
export LD_LIBRARY_PATH=$PGHOME/lib
export PGDATA=/var/lib/pgsql/$PGV/data
export PGPORT=5432

