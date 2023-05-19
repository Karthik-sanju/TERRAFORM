
resource "aws_security_group" "allow_tls" {
  name        = "practice-Minds"
  
   ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

 ingress {
    from_port   = 83
    to_port     = 83
    protocol    = "tcp"
    cidr_blocks = [var.vpn_ip]
  }

   ingress {
    from_port   = 50
    to_port     = 50
    protocol    = "tcp"
    cidr_blocks =[var.vpn_ip]
  }




}