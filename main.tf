provider aws {
    region = var.region
}

resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_type
}

variable "ami_id" {}
variable "instance_type" {}
variable "region" {}



terraform {
  backend "s3" {
    bucket = "kaizen-adileta"
    key    = "terraform.tfstate"
    region = "us-east-2"
    use_lockfile = true
  }
}