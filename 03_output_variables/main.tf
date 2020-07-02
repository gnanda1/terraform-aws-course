provider "aws" {
  region = var.region
}

# creates ubuntu server
resource "aws_instance" "web" {
  ami           = "ami-0ac80df6eff0e70b5"
  instance_type = "t2.micro"

  tags = {
    Name = "web_server"
  }
}

#Output attributes.
output "public-ip" {
  value = aws_instance.web.public_ip
}

output "availability-zone" {
  value = aws_instance.web.availability_zone
}