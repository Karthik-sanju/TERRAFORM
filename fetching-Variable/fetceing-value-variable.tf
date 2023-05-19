


resource "aws_instance" "web" {
  ami                       = "ami-089a545a9ed9893b6"
  instance_type             = var.types["up-east-1"]


}

variable "list" {
  type = list
  default =["t2.micro","m5.xlarge","t2.medium"]
}

variable "types" {
  
  type =map
  default = {
    up-east-1 ="t2.micro" 
    up-west-2 ="t2.nano"
    ap-south-1 ="t2.small"
  }
}