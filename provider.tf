provider "aws" {
  region                      = "us-east-1"
  /* skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  s3_force_path_style         = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key" */            # configure o acesso em : ~/.aws/credentials
}
terraform {                                                         # Guardando o tfstate em um bucket s3
  backend "s3" {
    bucket = "isa-terraform-tfstates"                            # criei este bucket préviamente (crie outro com outro nome e altere aqui para testar), habilitei o versionamento, para ter backup das versões anteriores de tfstate
    region = "us-east-1"
    key    = "challenge/challenge_project_terraform.state"      # esta é a pasta e o proprio arquivo de tfstate
  }
}