provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAUD6Q7ZSTXVWB5RE6"
  secret_key = "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"
}


variable "elb_names" {
   type = list
   default = ["dev-loadbalance","stage-loadbalancer","prod-loadbalancer", "test-loadbalancer"]
}

resource "aws_iam_user" "lb" {
  name                    = var.elb_names[count.index]
  count =  2
  path = "/system/"

}



