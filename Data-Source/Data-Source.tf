provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAUD6Q7ZST3JJDVGHO"
  secret_key = "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"
}


data "aws_ami" "App_ami" {
  
  most_recent      = true
 
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "instaance-1" {
  ami = data.aws_ami.App_ami.id
  instance_type =  "t2.micro"

}