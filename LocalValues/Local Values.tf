provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAUD6Q7ZST3JJDVGHO"
  secret_key = "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"
}

locals {
  common_tags = {
    Owner   = "LTIMindtree"
    service = "frontend"
  }
}


resource "aws_instance" "App-Dev" {
  ami           = "ami-089a545a9ed9893b6"
  instance_type = "t2.micro"
  tags          = local.common_tags
}


resource "aws_instance" "db-Dev" {
  ami           = "ami-089a545a9ed9893b6"
  instance_type = "t2.micro"
  tags          = local.common_tags
}


resource "aws_ebs_volume" "db-ebs" {
  availability_zone = "us-west-2a"
  size              = 8
  tags              = local.common_tags
}