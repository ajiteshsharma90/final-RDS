resource "aws_db_subnet_group" "db-subnet1" {
name = "db subnet group one"
subnet_ids = ["${aws_subnet.private-subnet1.id}", "${aws_subnet.private-subnet2.id}"]
}

