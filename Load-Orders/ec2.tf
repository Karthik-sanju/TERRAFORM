
resource "aws_instance" "Dev" {
  ami           = "ami-0beaa649c482330f7"
  instance_type = "t2.micro"
}