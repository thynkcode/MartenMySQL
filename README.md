# MartenMySQL

**OS**

Fedora 38

**Commands**

* curl -fsSL https://crystal-lang.org/install.sh | bash
* dnf install git
* git clone https://github.com/martenframework/marten
* cd marten
* shards install
* dnf groupinstall 'Development Tools'
* dnf install openssl openssl-devel
* crystal build src/marten_cli.cr -o bin/marten
* mv bin/marten /usr/local/bin
* cd ..
* marten new --database=mysql project myblog

**Output**

~~~
Unhandled exception: Invalid configuration for database 'default': database driver is not installed (please add 'crystal-lang/crystal-mysql' to your shard.yml file) (Marten::Conf::Errors::InvalidConfiguration)
  from lib/marten/src/marten/conf/global_settings/database.cr:191:11 in 'raise_invalid_config'
  from lib/marten/src/marten/conf/global_settings/database.cr:135:13 in 'validate'
  from lib/marten/src/marten/conf/global_settings.cr:325:11 in 'setup_db_connections'
  from lib/marten/src/marten/conf/global_settings.cr:316:9 in 'setup'
  from lib/marten/src/marten.cr:189:5 in 'setup_settings'
  from lib/marten/src/marten.cr:147:5 in 'setup'
  from lib/marten/src/marten.cr:233:5 in 'start'
  from src/server.cr:3:1 in '__crystal_main'
  from /usr/share/crystal/src/crystal/main.cr:129:5 in 'main_user_code'
  from /usr/share/crystal/src/crystal/main.cr:115:7 in 'main'
  from /usr/share/crystal/src/crystal/main.cr:141:3 in 'main'
  from /lib64/libc.so.6 in '??'
  from /lib64/libc.so.6 in '__libc_start_main'
  from tmp/manage in '_start'
  from ???
~~~
