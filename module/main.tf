provider "aws" {
  region = "us-east-1"
}
module "ec2_instance" {
  source = "../ec2_instance_v2"
  instance_value = "t2.micro"
  ami_value = "ami-0c7217cdde317cfec"
}
