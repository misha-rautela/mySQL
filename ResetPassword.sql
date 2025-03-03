// Stop mySQL
sudo service mysql stop
// Start the mysqld demon process using the --skip-grant-tables option with this command 

sudo mysqld –-skip-grant-tables

// ubuntu comes with debian-sys-main user, login using this user. 
mysql -u debian-sys-main-p

// or simply login using root
mysql -u root

// reset privileges
flush privileges

//Set new password 
set password for root@'localhost' = password ('misharautela')

// to reset mysql root account that can connect from everywhere: 
UPDATE mysql.user SET Password=PASSWORD('misharautela') WHERE User='root';
//or we can do 
UPDATE user SET Password = PASSWORD('misharautela') WHERE Host = 'localhost' AND User = 'root';
//to reset password on root account that can access from anywhere:
UPDATE user SET Password = PASSWORD('misharautela') WHERE Host = '%' AND User = 'root';

if above doesnt work:reinstall mysql, but this will delete existing data:-
sudo apt-get --purge remove mysql-server mysql-common mysql-client
sudo apt-get install mysql-server mysql-common mysql-client
mysqladmin -u root password your-new-password
sudo /etc/init.d/mysql restart



