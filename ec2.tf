resource "aws_instance" "web_server" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl start httpd
    sudo systemctl enable httpd
    echo "<html><body><h1>Welcome to Terraform EC2!</h1></body></html>" > /var/www/html/index.html
  EOF

  tags = {
    Name = "terraform-ec2"
  }
}