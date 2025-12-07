<h1>pg_auto_failover</h1>

<hr>

<p>pg_auto_failover 공식문서 : https://pg-auto-failover.readthedocs.io/en/main/</p>

<h2>트리 구조</h2>
PG_AUTO_FAILOVER-MAIN<br>
├── 0. env<br>
│   └── pg_env.sh<br>
│<br>
├── 1. install<br>
│   ├── 1-1. postgresql<br>
│   │   └── postgresql_install.sh<br>
│   ├── 1-2. pgautofailover<br>
│   │   └── pgautofailover_install.sh<br>
│   └── 1-3. keepalived<br>
│       └── keelalived_install.sh<br>
│<br>
├── 2. init<br>
│   ├── 2-1. monitor<br>
│   │   └── monitor_init.sh<br>
│   ├── 2-2. primary<br>
│   │   └── primary_init.sh<br>
│   └── 2-3. secondary<br>
│<br>
├── 3. config<br>
│   ├── 3-1. monitor<br>
│   │   ├── 1. postgresql.conf.example<br>
│   │   ├── 2. pg_hba.conf.example<br>
│   │   ├── 3. pgautofailover.service.example<br>
│   │   └── 4. pgautofailover_service_start.example<br>
│   │<br>
│   ├── 3-2. primary<br>
│   │   ├── 1. postgresql.conf.example<br>
│   │   ├── 2. pg_hba.conf.example<br>
│   │   ├── 3. pgautofailover.service.example<br>
│   │   └── 4. pgautofailover_service_start.example<br>
│   │<br>
│   └── 3-3. secondary<br>
│       ├── 1. postgresql.conf.example<br>
│       ├── 2. pg_hba.conf.example<br>
│       ├── 3. pgautofailover.service.example<br>
│       └── 4. pgautofailover_service_start.example<br>
│<br>
├── 3-4. keepalived<br>
│   ├── 3-4-0. check_primary<br>
│   ├── 3-4-1. primary<br>
│   ├── 3-4-2. secondary<br>
│   └── 3-4-3. service_start<br>
│<br>
└── 4. docs<br>
    ├── 4-0. env.md<br>
    ├── 4-1. install.md<br>
    ├── 4-2. init.md<br>
    ├── 4-3. config.md<br>
    ├── 4-4. auto-failover_test.md<br>
    └── 4-5. virtual_ip_change_test.md<br>


<h2>env</h2>
<p>env 폴더는 서비스 운영에 필요한 환경설정에 대하여 작성 하였습니다.</p>

<h2>install</h2>
<p>install 폴더는 postgresql, pgautofailover, keepalived 의 각 설치에 필요한 명령어 등의 정보를 작성 하였습니다.</p>

<h2>init</h2>
<p>init 폴더는 서비스 구축에 대한 정보를 작성 하였습니다.</p>

<h2>config</h2>
<p>config 폴더는 서비스 구축 및 운영에 필요한 conf 설정에 대한 정보를 작성 하였습니다.</p>

<h2>docs</h2>
<p>docs 폴더는 각 항목에 대하여 설명에 대한 정보를 작성 하였습니다.</p>
<p>test 관련 md는 command 와 테스트 결과에 대해 작성 하였습니다.</p>
