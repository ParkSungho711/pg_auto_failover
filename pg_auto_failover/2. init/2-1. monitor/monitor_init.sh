#!/bin/bash

# 환경설정 적용
source ~/.bash_profile

# data 영역 디렉토리 생성
mkdir -p $PGDATA

# 권한 변경
# postgres 이름으로 그룹, 유저  생성해야 함
chown postgres:postgres $PGDATA

# 모니터 생성
pg_autoctl create monitor --pgctl /usr/pgsql-16/bin/pg_ctl --pgdata /var/lib/pgsql/16/data --ssl-self-signed --pgport 5432 --auth scram-sha-256

# 서비스 기동
pg_autoctl run --pgdata /var/lib/pgsql/16/data

# formation 생성
# - pa_auto_failover Set을 저장하는 공간
pg_autoctl create formation --monitor postgres://autoctl_node@failovermonitor:5432/pg_auto_failover?sslmode=require --formation fotest --kind pgsql --enable-secondary

# 이후 절차는 primary, secondary에서 진행