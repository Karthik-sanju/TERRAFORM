/*data "aws_ami" "App_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allow ssh inbound traffic"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
}

resource "aws_instance" "myec2" {
  ami                    = data.aws_ami.App_ami.id
  instance_type          = "t2.micro"
  key_name               = "practice-key"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]


  provisioner "remote-exec" {
    on_failure = continue
    inline = [
      "sudo yum  -y install nano"
    ]
  }
  
  connection {
    type        = "ssh"
    user        = "ec2-user"
    host        = self.public_ip
    private_key = file("./practice-key.pem")
  }
}
*/