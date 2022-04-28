resource "aws_subnet" "private-subnet45" {
#vpc_id = "${aws_vpc.main.id}"
 vpc_id = var.vpc_id
 cidr_block = "10.0.3.0/24"
 availability_zone = "us-west-2a"
}
resource "aws_subnet" "private-subnet46" {
#vpc_id = "${aws_vpc.main.id}"
 vpc_id = var.vpc_id
 cidr_block = "10.0.4.0/24"
 availability_zone = "us-west-2b"
}
