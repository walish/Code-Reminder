# Commands-Reminder

https://git02.smartosc.com
118.70.67.134  git02.smartosc.com
113.190.242.76  git02.smartosc.com

git@git02.smartosc.com:phupt/friso.git
git@git02.smartosc.com:phupt/friso_sg.git
git@git02.smartosc.com:phupt/friso_id.git
git@git02.smartosc.com:phupt/friso_vn.git

//==================================
// Git Commands
//==================================
git clone --branch sosc-theme --recursive https://quanlh605@bitbucket.org/balanceinternet/cargo-crew.git Path\to\clone

git -c diff.mnemonicprefix=false -c core.quotepath=false fetch origin
From https://bitbucket.org/balanceinternet/cargo-crew
   12b4a51..cfc574f  sosc-theme -> origin/sosc-theme

git -c diff.mnemonicprefix=false -c core.quotepath=false pull origin sosc-theme

GIT - Ignore a file
git update-index --assume-unchanged path/to/file
git update-index --no-assume-unchanged path/to/file

ECG - run code review
C:\php>phpcs --standard=C:xampp\php\pear\PHP\Ecg Path\To\Code\Folder
C:\php>phpcs --standard=C:xampp\php\pear\PHP\Ecg D:\xampp\htdocs\tpl_magento\app\code\local\SM\OrderProcess

Connect to git
ssh -T git@git02.smartosc.com

SSH Keygen:
/* Move to /home */
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


//================================
// MySQL commands
//================================
Import DB:
mysql -u username -p database_name < file.sql

Connect DB:
mysql --host=amd1.smartosc.com --user=devtop --password devtop mydb
mysql -h localhost -u myname -pmypass mydb

MongoDB
Run MongoDB: 
C:\mongodb\bin\mongod.exe --dbpath d:\test\mongodb\data
C:\mongodb\bin\mongod -f mongod.cfg
Connect to MongoDB:
C:\mongodb\bin\mongo.

MySQL Dump DB
- an entire DB: mysqldump -u [uname] -p[pass] db_name > db_backup.sql
- all DBs: mysqldump -h [host] -u [uname] -p[pass] --all-databases > all_db_backup.sql
- specific tables within a DB: mysqldump -u [uname] -p[pass] db_name table1 table2 > table_backup.sql
- auto-compressing the output using gzip: mysqldump -u [uname] -p[pass] db_name | gzip > db_backup.sql.gz


CREATE DATABASE mydb
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

//================================
// SSH Commands
//================================
ssh username@host 


//=========================================
// N98 Magerun
//=========================================
Change admin user password:
./n98-magerun.phar admin:user:change-password [username] [password]
Create admin user:
./n98-magerun.phar admin:user:create [username] [email] [password] [firstname] [lastname] [role]

./n98-magerun.phar admin:user:create dev quanlh@smartosc.com dev@123 Dev Smart Administrators

Check Resolve/Lookup Class Names (rewrites track)
./n98-magerun.phar dev:class:lookup <block|model|helper> <name>
./n98-magerun.phar dev:class:lookup model overridecore_checkout/checkout_type_onepage

Rewrite Conflicts
n98-magerun.phar dev:module:rewrite:conflicts [--log-junit="..."]


//=========================================
// Magento 2 Commands
//=========================================

- First Setup Script
php bin/magento setup:install --base-url=http://magento2.local/ --db-host=localhost --db-name=magento2 --db-user=root --db-password=a --admin-firstname=Quan --admin-lastname=Kun --admin-email=user@example.com --admin-user=admin --admin-password=admin123 --language=en_US --currency=USD --timezone=America/Chicago --cleanup-database --sales-order-increment-prefix="ORD$" --session-save=db --use-rewrites=1

- Change permission
HTTPDUSER=`ps axo user,comm | grep -E '[a]pache|[h]ttpd|[_]www|[w]ww-data|[n]ginx' | grep -v root | head -1 | cut -d\  -f1`;
sudo setfacl -R -m u:"$HTTPDUSER":rwX -m u:`whoami`:rwX var pub/static pub/media app/etc;
sudo setfacl -dR -m u:"$HTTPDUSER":rwX -m u:`whoami`:rwX var pub/static pub/media app/etc;
chmod u+x bin/magento

//=========================================
// Linux Commands
//=========================================
- CHange Permission for run PHP
find . -type d -exec chmod 755 {} \;
find . -type f -exec chmod 644 {} \;

- Compare directories
diff -rq dir1 dir2

- compress files
tar -cvpzf /path/to/output/file.tar.gz /path/to/media/folder

tar = Tape archive
c = Create
v = Verbose mode
p = Preserving files and directory permissions.
z = This will tell tar that compress the files further to reduce the size of tar file.
f = It allows tar to get file name.

gzip /path/to/output/file.tar

- uncompress 
gunzip file.tar.gz
tar -xvf file.tar
tar -zxvf backup.tar.gz

- Setup Crontab
crontab -l  #list
crontab -e  #edit

*/1 * * * * /bin/sh /home/cloudpanel/htdocs/shop-test.friso.com.sg/cron.sh
/usr/bin/wget -O - -q -t http://test-shop.friso.com.vn/backup_fc.tar.gz


 
 
