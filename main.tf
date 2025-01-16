provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0973769d2c4406635"
instance_type = "t2.medium"
key_name = "mumkp"
vpc_security_groups_ids = "sg-06537e734092f450d"

tags = {
Name = var.instance_names[count.index]
}
}
variable "instance_names" {
default = ["Jenkins", "Nexus", "tomcat", "Monitoring"]
}
