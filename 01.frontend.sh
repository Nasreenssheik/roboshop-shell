echo -e "\e[31m Install nginx\e[0m"
yum install nginx -y &>>/tmp/roboshop.log
echo -e "\e[31m Nginx server installed successfully\e[0m"
 systemctl start nginx
 systemctl enable nginx &>>/tmp/roboshop.log
 echo -e "\e[31m Nginx server started and enabled successfully\e[0m"
 cd /usr/share/nginx/html
 rm -rf * &>>/tmp/roboshop.log
 echo -e "\e[31m Default server content removed\e[0m"
 curl -O https://roboshop-artifacts.s3.amazonaws.com/frontend.zip &>>/tmp/roboshop.log
 unzip frontend.zip &>>/tmp/roboshop.log
 echo -e "\e[31m New server content is added\e[0m"
 rm -rf frontend.zip
 systemctl restart nginx
 echo -e "\e[31m Nginx server restarted successfully\e[0m"
 cp /root/roboshop-shell/roboshop.conf /etc/nginx/default.d/roboshop.conf
 echo -e "\e[32m Nginx configuraion file updated successfully \e[0m"
 systemctl restart nginx