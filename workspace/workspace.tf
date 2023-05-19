data "aws_ami" "App_ami" {
    most_recent      = true
   owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "myec2-2" {
  ami = data.aws_ami.App_ami.id
  instance_type = lookup(var.instance_type,terraform.workspace)
}

variable "instance_type"{
    type =map
    default ={
        default = "t2.micro"
        dev = "t2.small"
        prod = "t2.large"
    }
}