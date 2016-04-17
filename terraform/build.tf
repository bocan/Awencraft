#############################################################################################################
# PARAMETERS
# These should reside in terraform.tfvars in this directory IGNORED AND NOT CHECKED INTO GIT
#############################################################################################################

# AWS key to be loaded from terraform.tfvars file (not to be in git)
variable "access_key" {}
variable "secret_key" {}

variable "region" {
  default = "us-east-1"
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"

}

resource "aws_instance" "awencraft" {
    ami = "ami-00e1f76a"
    instance_type = "t2.small"
}

