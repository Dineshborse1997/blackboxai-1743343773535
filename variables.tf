variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (x86)
}

variable "key_name" {
  description = "SSH key pair name (must exist in AWS account)"
  type        = string
}