<h1>pg_auto_failover</h1>

<hr>

<p>pg_auto_failover 공식문서 : https://pg-auto-failover.readthedocs.io/en/main/</p>

<br>

<h2>트리 구조</h2>
PG_AUTO_FAILOVER-MAIN
├── 0. env
│   └── pg_env.sh
│
├── 1. install
│   ├── 1-1. postgresql
│   │   └── postgresql_install.sh
│   ├── 1-2. pgautofailover
│   │   └── pgautofailover_install.sh
│   └── 1-3. keepalived
│       └── keelalived_install.sh
│
├── 2. init
│   ├── 2-1. monitor
│   │   └── monitor_init.sh
│   ├── 2-2. primary
│   │   └── primary_init.sh
│   └── 2-3. secondary
│
├── 3. config
│   ├── 3-1. monitor
│   │   ├── 1. postgresql.conf.example
│   │   ├── 2. pg_hba.conf.example
│   │   ├── 3. pgautofailover.service.example
│   │   └── 4. pgautofailover_service_start.example
│   │
│   ├── 3-2. primary
│   │   ├── 1. postgresql.conf.example
│   │   ├── 2. pg_hba.conf.example
│   │   ├── 3. pgautofailover.service.example
│   │   └── 4. pgautofailover_service_start.example
│   │
│   └── 3-3. secondary
│       ├── 1. postgresql.conf.example
│       ├── 2. pg_hba.conf.example
│       ├── 3. pgautofailover.service.example
│       └── 4. pgautofailover_service_start.example
│
├── 3-4. keepalived
│   ├── 3-4-0. check_primary
│   ├── 3-4-1. primary
│   ├── 3-4-2. secondary
│   └── 3-4-3. service_start
│
└── 4. docs
    ├── 4-0. env.md
    ├── 4-1. install.md
    ├── 4-2. init.md
    ├── 4-3. config.md
    ├── 4-4. auto-failover_test.md
    └── 4-5. virtual_ip_change_test.md


<h2>env</h2>
<p>env는 서비스 운영에 필요한 환경설정 정보 입니다.</p>

<h2>install</h2>
<p>install은 postgresql, pgautofailover, keepalived 의 각 설치에 필요한 명령어 등의 정보 입니다.</p>

<h2>init</h2>
