provider "aws" {
        region = "ap-southeast-1a"
}

variable "ami" {
        default = "ami-01581ffba3821cdf3"
}


resource "aws_instance" "my-instance" {
        ami = "ami-01581ffba3821cdf3"
        instance_type = "t3a.micro"
        key_name = "thaidevelopers-aws"
        tags = {
                Name = "66666666-Test"
        }
}

