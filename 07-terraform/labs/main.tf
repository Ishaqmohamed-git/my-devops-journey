resource "aws_instance" "challenge-t4" {
  ami           = "ami-0737d2d50c7fece1b"
  instance_type = "t3.micro"

vpc_security_group_ids = [
    aws_security_group.zaki-t4.id
    ]


user_data = <<EOF
#!/bin/bash

# Update system
yum update -y

# Install Apache and PHP
yum install -y httpd php php-mysqlnd php-fpm php-json php-gd php-mbstring php-xml php-zip wget unzip

# Start and enable Apache
systemctl start httpd
systemctl enable httpd

# Download WordPress
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz

# Move WordPress to Apache web root
rm -rf /var/www/html/*
mv wordpress/* /var/www/html/

# Set permissions
chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html

# Restart Apache
systemctl restart httpd
EOF


  tags = {
    Name = "challenge-t4"
  }
  
}

resource "aws_security_group" "zaki-t4" {
  # ... other configuration ...

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]


  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}