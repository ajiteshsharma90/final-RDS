resource "aws_db_subnet_group" "db-subnet1" {
name = "db subnet group one"
subnet_ids = ["${aws_subnet.private-subnet3.id}", "${aws_subnet.private-subnet4.id}"]
}

