# https://learn.hashicorp.com/terraform/getting-started/remote

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# create Amazon Linux AMI
resource "aws_instance" "example" {
  ami           = "ami-0e9089763828757e1"
  instance_type = "t2.micro"
}



