sudo apt update
sudo apt install apache2 -y
echo "<h1>HELLO I AM TERRAFORM</h1>" > index.html
sudo cp index.html /var/www/html/index.html
sudo systemctl restart apache2  