provider "aws" {
  region     = "us-east-2"
  access_key = ""
  secret_key = ""
}
resource "aws_instance" "practice-ec2" {
  ami                       = ""
  instance_type             = "t2.micro"
 
}

