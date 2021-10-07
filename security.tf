resource "aws_security_group" "test_instance_sg" {
  name          = "Test-Instance"
  description   = "Allow SSH traffic"
  vpc_id        = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_cidr
    }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
  tags          = var.tags
}
resource "aws_security_group" "sg_rds_challenge" {
  name   = "sg_rds_challenge"
  vpc_id = var.vpc_id

  tags = {
    Name = "sg_rds_challenge"
  }
}

resource "aws_security_group_rule" "sg-rule-rds-challenge" {
  from_port         = 3306
  protocol          = "tcp"
  security_group_id = aws_security_group.sg_rds_challenge.id
  to_port           = 3306
  type              = "ingress"
  cidr_blocks       = var.ssh_cidr
}

resource "aws_security_group_rule" "outbound_rule" {
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.sg_rds_challenge.id
  to_port           = 0
  type              = "egress"
  cidr_blocks       = ["0.0.0.0/0"]
}