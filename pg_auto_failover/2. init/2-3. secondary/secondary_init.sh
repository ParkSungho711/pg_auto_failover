#!/bin/bash

# 환경설정 적용
source ~/.bash_profile

# data 영역 디렉토리 생성
mkdir -p $PGDATA

# 권한 변경
# postgres 이름으로 그룹, 유저  생성해야 함
chown postgres:postgres $PGDATA

# formation에 secondary 등록
pg_autoctl create postgres --pgctl /usr/pgsql-16/bin/pg_ctl --pgdata /var/lib/pgsql/16/data --hostname failoversecondary --ssl-self-signed --pgport 5432 --auth scram-sha-256 --monitor postgres://autoctl_node:changeme@failovermonitor:5432/pg_auto_failover?sslmode=require --formation fotest --name 'smdw' --candidate-priority 50

# 서비스 기동
pg_autoctl run --pgdata /var/lib/pgsql/16/data