provider "aws" {
  region = var.region
}

resource "aws_vpc" "example" {
  cidr_block = var.cidr_block

  tags = {
    Name = "MyVPC"
  }
}
#Output attribute.
output "ip" {
  value = aws_vpc.example.cidr_block
}