# Creating 1st public subnet 
resource "aws_subnet" "tf-public-sn-1" { 
 vpc_id = "${aws_vpc.tf-vpc.id}"
 cidr_block = "192.168.100.0/24" 
 map_public_ip_on_launch = true 
 availability_zone = "us-east-1a" 
tags = { 
 Name = "tf-public-sn-1" 
} 
} 
# Creating 2nd public subnet 
resource "aws_subnet" "tf-public-sn-2" { 
 vpc_id = "${aws_vpc.tf-vpc.id}"
 cidr_block = "192.168.200.0/24" 
 map_public_ip_on_launch = true 
 availability_zone = "us-east-1b" 
tags = { 
 Name = "tf-public-sn-2" 
} 
}
