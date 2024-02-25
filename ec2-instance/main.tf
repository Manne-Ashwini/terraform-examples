provider "aws" {
    region="us-east-1"
}

resource "aws_instance" "example"{
    ami="ami-0c7217cdde317cfec"
    instance_type = "t2.micro"
    key_name = "login_key"
    tags = {
      Name ="Example"
    }
}
