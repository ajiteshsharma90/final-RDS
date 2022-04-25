resource "aws_subnet" "private-subnet1" {
vpc_id = "${aws_vpc.main.id}"
cidr_block = "10.0.2.0/24"
availability_zone = "us-west-2a"
}