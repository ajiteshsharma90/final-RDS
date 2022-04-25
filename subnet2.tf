resource "aws_subnet" "private-subnet2" {
vpc_id = "${aws_vpc.main.id}"
cidr_block = "10.0.3.0/24"
availability_zone = "us-west-2b"
}