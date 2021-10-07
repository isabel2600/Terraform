ami_id = "ami-087c17d1fe0178315"      # setei uma Amazon Linux 2 AMI (HVM), SSD Volume Type
environment = "dev"
instance_type = "t3.micro"    # tipo de instancia estava errado
ssh_cidr = ["10.123.0.0/16"]  # troquei para o cidr block da minha vpc e lista de string
vpc_id = "vpc-013c658b439314009"       # troque este vpc id para um que possua
subnet_id = ["subnet-0b38e35b5091d65e2", "subnet-055caf446a6ca7b8c"]
db_instance = "db.t3.small"

tags = {                                              # forma de taguear faltava o igual
  ApplicationID       = "APP1234567"
  Description         = "Test Instance"
  Environment         = "DEV"
  GBL                 = "123456789"
  Owner               = "MANAGER@test.com"
  Name                = "US-EAST-DEV-US-TESTAPP"
}
