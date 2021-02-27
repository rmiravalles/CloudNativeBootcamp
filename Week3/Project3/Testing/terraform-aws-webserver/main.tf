# this file is meant to be a module, so it needs to referenced in another Terraform configuration file
# below is a security group resource that will allow incoming communication through port 8080
resource "aws_security_group" "allow_8080" {
  name        = "allow_8080"
  description = "Allow port 8080 inbound traffic"

  ingress {
    description = "8080 from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # the 0.0.0.0/0 means any IP address is allowed.
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id  # this value references the data source block. this is called interpolation
  instance_type = var.size  # this will allow the resource to take variable inputs

  # this is to assign the security group to the aws instance. this argument takes in lists[]
  vpc_security_group_ids = [aws_security_group.allow_8080.id]

  # user data to provide when launching the instance. in this case, when the instance launches, it will run the script below
  user_data = <<-EOF
                #!/bin/bash
                echo "My first Terraform module!" > index.html
                nohup busybox httpd -f -p 8080 &
                EOF

  tags = {
    Name = var.servername  # here too, this will reference the variable named servername. this will make the code reusable
  }
}