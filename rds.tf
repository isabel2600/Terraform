resource "aws_db_instance" "rds-challenge" {
  instance_class          = var.db_instance
  engine                  = "mysql"
  engine_version          = "8.0"
  multi_az                = true
  storage_type            = "gp2"
  allocated_storage       = 30
  identifier              = "rds-challenge-01"
  username                = "sre"
  password                = var.password
  apply_immediately       = "true"
  backup_retention_period = 10
  backup_window           = "01:01-03:01"
  final_snapshot_identifier = "burial-rds-challenge-01"
  db_subnet_group_name    = aws_db_subnet_group.db-subnet-rds-challenge.id
  vpc_security_group_ids  = ["${aws_security_group.sg_rds_challenge.id}"]
  tags                    = var.tags
}

resource "aws_db_subnet_group" "db-subnet-rds-challenge" {
  name       = "db-subnet-rds-challenge"
  subnet_ids = var.subnet_id[*]
}

