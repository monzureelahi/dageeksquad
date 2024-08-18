resource "aws_instance" "piit-ec2-renew" {
  ami = "ami-0e9107ed11be76fde"
  instance_type = "t2.micro"
  key_name = "piit05042024Home"
  security_groups = ["piit-tf1-ec2-renew"]
}
