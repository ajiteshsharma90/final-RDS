resource "aws_subnet" "private-subnet4" {
#vpc_id = "${aws_vpc.main.id}"
vpc_id = "vpc-707fb41b"
cidr_block = "10.0.3.0/24"
availability_zone = "us-west-2b"
}
