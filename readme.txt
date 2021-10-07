versão do teraform usada: 0.12.31

como rodar:

teraform init
terraform plan -var-file=configurations/dev/us-east-1/dev.tf -var "password=Qwwcxcjdhcv1"
terraform apply -var-file=configurations/dev/us-east-1/dev.tf --auto-approve -var "password=Qwwcxcjdhcv1"