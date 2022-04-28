resource "aws_db_subnet_group" "db-subnet55" {
name = "db subnet group_12345"
subnet_ids = ["${aws_subnet.private-subnet45.id}", "${aws_subnet.private-subnet46.id}"]
}

