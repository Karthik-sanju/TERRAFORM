data "aws_ami" "App_ami" {
    most_recent      = true
   owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "instance-2" {
  ami = data.aws_ami.App_ami.id
  instance_type =  var.instance_type
}
