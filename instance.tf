# Creating 1st EC2 instance in Public Subnet
resource "aws_instance" "Instance-1" {
 ami = "ami-052efd3df9dad4825"
 instance_type = "t2.micro"
 key_name = "wordpress"
 vpc_security_group_ids = ["${aws_security_group.tf-sg.id}"]
 subnet_id = "${aws_subnet.tf-public-sn-1.id}"
 associate_public_ip_address = true
 user_data = "${file("data.sh")}"
tags = {
 Name = "Instance-1"
}
}
