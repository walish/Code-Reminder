# Commands-Reminder

## Git Commands

Clone:
```
git clone --branch <branch_name> --recursive username@host/repo.git <path\to\folder>
```

Ignore a file:
```
git update-index --assume-unchanged path/to/file
git update-index --no-assume-unchanged path/to/file
```

SSH Keygen:
```
cd ~
ssh-keygen
/* 
	For linux, you have to run 
	- check ssh-agent is enabled
	- add ssh key to ssh-agent
*/
eval "$(ssh-agent -s)" // for linux
eval $(ssh-agent -s) // For windows
ssh-add ~/.ssh/id_rsa
```

```
git diff-tree  -r --no-commit-id --name-only LAF-2-new production | xargs zip -r pat2.zip
```

## MySQL commands

Import DB:
```
mysql -u username -p database_name < file.sql

/* For sql.gz file */
zcat /path/to/file.sql.gz | mysql -uusername -p db_name

/* Import .tar.gz gzipped mysql dumps in one line */
tar -xzOf path/to/your_db_dump.sql.tar.gz | mysql -uusername -p db_name

Connect DB:
```
mysql --host=hostname --user=user --password mypass db_name
mysql -h hostname -u user -pmypass db_name
```

MySQL Dump DB:

- an entire DB: 
```
mysqldump -u [uname] -p[pass] db_name > db_backup.sql
```
- all DBs: 
```
mysqldump -h [host] -u [uname] -p[pass] --all-databases > all_db_backup.sql
```
- specific tables within a DB: 
```
mysqldump -u [uname] -p[pass] db_name table1 table2 > table_backup.sql
```
- auto-compressing the output using gzip: 
```
mysqldump -u [uname] -p[pass] db_name | gzip > db_backup.sql.gz
```

Create DB with collation:
```
CREATE DATABASE mydb DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
```

##Magento 2 Commands

First Setup Script
```
php bin/magento setup:install 
	--base-url=http://magento2.local/ 
	--db-host=localhost 
	--db-name=magento2 
	--db-user=root 
	--db-password=a 
	--admin-firstname=Quan --admin-lastname=Kun 
	--admin-email=user@example.com --admin-user=admin --admin-password=admin123 
	--language=en_US 
	--currency=USD 
	--timezone=America/Chicago 
	--cleanup-database 
	--sales-order-increment-prefix="ORD$" 
	--session-save=db 
	--use-rewrites=1
```

Change permission
```
HTTPDUSER=`ps axo user,comm | grep -E '[a]pache|[h]ttpd|[_]www|[w]ww-data|[n]ginx' | grep -v root | head -1 | cut -d\  -f1`;
sudo setfacl -R -m u:"$HTTPDUSER":rwX -m u:`whoami`:rwX var pub/static pub/media app/etc;
sudo setfacl -dR -m u:"$HTTPDUSER":rwX -m u:`whoami`:rwX var pub/static pub/media app/etc;
chmod u+x bin/magento
```

Generate urn highlighter for PHPStorm

```
magento dev:urn-catalog:generate .idea/misc.xml
```

##Linux Commands

- Remove PHP packages
```
sudo aptitude purge `dpkg -l | grep php| awk '{print $2}' |tr "\n" " "`
```

- Change Permission for run PHP
```
find . -type d -exec chmod 755 {} \;
find . -type f -exec chmod 644 {} \;
```

- Compare directories
```
diff -rq dir1 dir2
```

- Compress files
```
tar -cvpzf /path/to/output/file.tar.gz /path/to/media/folder

tar = Tape archive
c = Create
v = Verbose mode
p = Preserving files and directory permissions.
z = This will tell tar that compress the files further to reduce the size of tar file.
f = It allows tar to get file name.
```
```
gzip /path/to/output/file.tar
```
- Uncompress 
```
gunzip file.tar.gz
tar -xvf file.tar
tar -zxvf backup.tar.gz
```

- Setup Crontab
```
crontab -l  #list
crontab -e  #edit

* * * * * /bin/sh /path/to/file.sh
* * * * * /usr/bin/wget -O - -q -t http://host.com/file.txt
```
 
 
