keystone service-create --name=ceilometer --type=metering --description="Ceilometer Service"
keystone endpoint-create --region RegionOne --service-id 7f2caebd05394b79ae27f2499bd82e32 --publicurl "http://10.41.0.2:8777/" --adminurl "http://10.41.0.2:8777/" --internalurl "http://10.41.0.2:8777/"

keystone user-create --name=ceilometer --pass="superpass" --tenant_id f30a3492576441e9851756acea6d9d16 --email=ceilometer@avencall.com
keystone role-create --name=ResellerAdmin
keystone user-role-add --tenant_id f30a3492576441e9851756acea6d9d16 --user_id 330bd4918d9e408a9b890721bb1e7f5a --role_id b856e9f806a148abba5d13cccf6b7993
keystone user-role-add --tenant_id f30a3492576441e9851756acea6d9d16 --user_id 330bd4918d9e408a9b890721bb1e7f5a --role_id 32c65b21e4a74fbbbae8fd0805818836

connect to mysql
create database ceilometer;
use mysql
GRANT ALL ON ceilometer.* TO 'ceilometer'@'%' IDENTIFIED BY 'superpass';
