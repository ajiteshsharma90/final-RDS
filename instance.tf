resource "aws_db_subnet_group" "db-subnet" {
name = "db subnet group"
subnet_ids = ["${aws_subnet.private-subnet1.id}", "${aws_subnet.private-subnet2.id}"]
}

