resource "aws_subnet" "private-subnet44" {
#vpc_id = "${aws_vpc.main.id}"
 vpc_id = "vpc-707fb41b"
 cidr_block = "10.0.2.0/24"
 availability_zone = "us-west-2a"
}
