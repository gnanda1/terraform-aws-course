# make sure "gnlabs-remote-backend" S3 bucket exists before running "terraform apply"

terraform {
  backend "s3" {
    bucket         = "gnlabs-remote-backend"
    region         = "us-east-1"
    key            = "remotedemo.tfstate"
  }
}