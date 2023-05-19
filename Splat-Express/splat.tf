provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAUD6Q7ZST3JJDVGHO"
  secret_key = "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"
}


resource "aws_iam_user" "lb" {
  name = "var.iam_user.${count.index}"
  count = 3
  path = "/system/"

}
output "arns" {
value = aws_iam_user.lb[*].arn
 }