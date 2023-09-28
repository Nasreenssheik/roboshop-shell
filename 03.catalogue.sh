curl -sL https://rpm.nodesource.com/setup_lts.x | bash  &>>/tmp/roboshop.log
echo -e "\e[32m Repo file downloaded successfully\e[0m"
yum install nodejs -y  &>>/tmp/roboshop.log
echo -e "\e[32m Nodejs installed successfully \e[0m"
useradd roboshop  &>>/tmp/roboshop.log
echo -e "\e[32m useradded successfully \e[0m"
mkdir /app
cd /app  &>>/tmp/roboshop.log
echo -e "\e[32m Directory changed successfully \e[0m"
curl -0 https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip  &>>/tmp/roboshop.log
unzip catalogue.zip  &>>/tmp/roboshop.log
echo -e "\e[31m New server content is added\e[0m"
rm -rf catalogue.zip
npm install  &>>/tmp/roboshop.log
echo -e "\e[31m Nodejs Dependencies installed successfully\e[0m"

