# See http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html

variable "region" {}

variable "exceptions" {
  type = "map"
  default = {
    "us-east-1" = "ec2.internal"
  }
}

output "domain_name" {
  value = "${lookup(var.exceptions, var.region, "${var.region}.compute.internal")}"
}