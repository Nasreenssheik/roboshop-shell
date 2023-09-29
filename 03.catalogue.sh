curl -sL https://rpm.nodesource.com/setup_lts.x | bash
echo -e "\e[32m Repo file downloaded successfully\e[0m"
yum install nodejs -y  &>>/tmp/roboshop.log
echo -e "\e[32m Nodejs installed successfully \e[0m"
useradd roboshop  &>>/tmp/roboshop.log
echo -e "\e[32m useradded successfully \e[0m"
mkdir /app
cd /app
echo -e "\e[32m Directory changed successfully \e[0m"
curl -O https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
unzip catalogue.zip
echo -e "\e[31m New server content is added\e[0m"
rm -rf catalogue.zip
npm install
echo -e "\e[31m Nodejs Dependencies installed successfully\e[0m"
cp /root/roboshop-shell/catalogue.service /etc/systemd/system/catalogue.service
echo -e "\e[31m catalogue service file created successfully\e[0m"
systemctl daemon-reload
systemctl enable catalogue
systemctl restart catalogue
echo -e "\e[31m catalogue enabled and restarted successfully\e[0m"
cp /root/roboshop-shell/mongodb.repo /etc/yum.repos.d/mongo.repo
echo -e "\e[31m repo file downloaded successfully\e[0m"
yum install mongodb-org-shell -y
echo -e "\e[32m mongodb installed successfully \e[0m"
mongo --host mongodb-dev.nasreen.cloud </app/schema/catalogue.js
echo -e "\e[32m mongodb schema loaded successfully \e[0m"
systemctl restart catalogue
