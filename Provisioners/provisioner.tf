/*
data "aws_ami" "App_ami" {
    most_recent      = true
   owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "instance-1" {
  ami = data.aws_ami.App_ami.id
  instance_type =  "t2.micro"
  key_name = "practice-key"

  provisioner "remote-exec" {
     
    connection {
    type     = "ssh"
    user     = "ec2-user"
    host     = self.public_ip
    private_key = file("./practice-key.pem")

     inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]
  }

 
  }

}
*/