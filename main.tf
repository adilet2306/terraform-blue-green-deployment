provider aws {
    region = "us-east-1"
}

resource "aws_instance" "web" {
    ami = "ami-09e6f87a47903347c"
    instance_type = "t2.micro"
}

terraform {
  backend "s3" {
    bucket = "kaizen-adileta"
    key    = "terraform.tfstate"
    region = "us-east-1"
    use_lockfile = true
  }
}