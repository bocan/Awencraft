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
 
resource "aws_security_group" "minecraft" {
  name = "minecraft"
  description = "Minecraft Security Group"

  ingress {
    from_port = 25565
    to_port = 25565
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    protocol = "tcp"
    from_port = 22
    to_port = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "awencraft" {
    ami = "ami-00e1f76a"
    instance_type = "t2.small"
    security_groups = ["minecraft"]
    key_name = "CBFKey"
}


