provider "aws" {
        region = "ap-southeast-1"
}

variable "ami" {
        default = "ami-0619d309766d26749"
}


resource "aws_instance" "my-instance" {
        ami = "ami-0619d309766d26749"
        instance_type = "t3a.micro"
        key_name = "thaidevelopers-aws"
        tags = {
                Name = "TEST-Terraform"
        }
}

