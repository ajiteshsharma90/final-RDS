resource "aws_db_subnet_group" "db-subnet33" {
name = "db subnet group_1231"
subnet_ids = ["${aws_subnet.private-subnet44.id}", "${aws_subnet.private-subnet55.id}"]
}

