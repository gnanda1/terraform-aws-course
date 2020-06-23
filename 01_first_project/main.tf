provider "aws" {
  region = "us-east-1"
}

# create EC2 resource
resource "aws_instance" "my_webserver" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}