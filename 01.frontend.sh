echo -e "\e[31m Install nginx\e[0m"
yum install nginx -y
echo -e "\e[31m Nginx server installed successfully\e[0m"
 systemctl start nginx
 systemctl enable nginx
 echo -e "\e[31m Nginx server started and enabled successfully\e[0m"
 cd /usr/share/nginx/html
 rm -rf *
 curl -O https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
 unzip frontend.zip
 rm -rf frontend.zip
 systemctl restart nginx
 echo -e "\e[31m Nginx server restarted successfully\e[0m"