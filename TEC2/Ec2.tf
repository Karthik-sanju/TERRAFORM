provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAUD6Q7ZSTZ4HTF7NN"
  secret_key = "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"
}
resource "aws_instance" "practice-ec2" {
  ami                       = "ami-089a545a9ed9893b6"
  instance_type             = "t2.micro"
 
}

