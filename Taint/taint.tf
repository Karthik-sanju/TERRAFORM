provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAUD6Q7ZST3JJDVGHO"
  secret_key = "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"
}

resource "aws_instance" "Dev" {
  ami           = "ami-0beaa649c482330f7"
  instance_type = "t2.micro"
}