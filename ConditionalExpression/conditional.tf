

variable "test" {}


resource "aws_instance" "Dev" {
  ami           = "ami-089a545a9ed9893b6"
  instance_type = "t2.micro"
  count         = var.test == true ? 3 : 0

}

resource "aws_instance" "Prod" {
  ami           = "ami-089a545a9ed9893b6"
  instance_type = "t2.micro"
  count         = var.test == false ? 1 : 0

}