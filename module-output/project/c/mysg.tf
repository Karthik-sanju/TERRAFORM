module "sgmodule" {
  source = "../../module/sg"
}


resource "aws_instance" "instance-1" {
  ami                    = "ami-0beaa649c482330f7"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [module.sgmodule.sg_id]
}

output "sg_id_output" {
  value = module.sgmodule.sg_id
}