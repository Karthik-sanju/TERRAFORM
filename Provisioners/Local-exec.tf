data "aws_ami" "App_ami" {
    most_recent      = true
   owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "myec2" {
  ami = data.aws_ami.App_ami.id
  instance_type =  "t2.micro"


  provisioner "local-exec" {
    
command =     "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
     
  }
}
