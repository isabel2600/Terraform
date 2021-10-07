# Terraform

teraform version used: 0.12.31
how to run:

$teraform init
$terraform plan -var-file=configurations/dev/us-east-1/dev.tf -var "password=Qwwcxcjdhcv1"
$terraform apply -var-file=configurations/dev/us-east-1/dev.tf --auto-approve -var "password=Qwwcxcjdhcv1"


Reminder every project is in the feature/isa-study branch
