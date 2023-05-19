variable "sg_ports" {
  type        = list(number)
  description = "listof ingress ports"
  default     = [8200, 8201, 8300, 9200, 9500]
}

resource "aws_security_group" "allow_tls" {
  name        = "Dynamic-SG-Minds"
  description = "ingress for vault"

  dynamic "ingress" {
    for_each = var.sg_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

  }

  dynamic "egress" {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

}


}