resource "aws_db_subnet_group" "db-subnet3" {
name = "db subnet group_1231
subnet_ids = ["${aws_subnet.private-subnet3.id}", "${aws_subnet.private-subnet4.id}"]
}

