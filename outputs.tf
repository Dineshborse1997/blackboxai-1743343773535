output "public_ip" {
  value       = aws_instance.web_server.public_ip
  description = "Public IP of the EC2 instance"
}

output "ssh_command" {
  value       = "ssh -i ~/.ssh/${var.key_name}.pem ec2-user@${aws_instance.web_server.public_ip}"
  description = "SSH command to connect to the instance"
}

output "web_url" {
  value       = "http://${aws_instance.web_server.public_ip}"
  description = "URL to access the web server"
}