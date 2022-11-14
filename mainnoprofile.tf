provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
  tags = {
    name = "TF_christine"
  }
}

output "instance_ip_addr" {
  value = aws_instance.example.private_ip
}
