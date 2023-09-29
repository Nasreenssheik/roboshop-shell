
cp /root/roboshop-shell/mongodb.repo /etc/yum.repos.d/mongo.repo  &>>/tmp/roboshop.log
echo -e "\e[32m Repo file downloaded successfully\e[0m"
yum install mongodb-org -y  &>>/tmp/roboshop.log
echo -e "\e[32m mongodb installed successfully \e[0m"
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf  &>>/tmp/roboshop.log
echo -e "\e[32m mongodb listen address changed successfully \e[0m"
systemctl restart mongod
systemctl enable mongod  &>>/tmp/roboshop.log
echo -e "\e[32m mongodb enabled and started successfully \e[0m"

