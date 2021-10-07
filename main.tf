resource "aws_instance" "test_instance" {             # faltava letra e em aws_instance
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.test_instance_sg.id]   # vinculando o security group abaixo com a ec2
  subnet_id = var.subnet_id[0]
  tags          = var.tags

}

/* resource "aws_in" "name" {                         #nao existe, então foi removido
  
} */

# Os security grops foram movidos para um arquivo apartado.