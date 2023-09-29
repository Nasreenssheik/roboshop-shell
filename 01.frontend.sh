echo -e "\e[33m Installing Nginx Server\e[0m"
yum install nginx -y
echo -e "\e[33m Enabling and starting the Nginx server\e[0m"
systecmtl enable nginx
systemctl start nginx
echo -e "\e[33m Removing default Nginx content\e[0m"
cd /usr/share/nginx/html/
rm -rf *
echo -e "\e[33m Download New Content to Nginx\e[0m"
curl -O https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
unzip frontend.zip
rm -rf frontend.zip


