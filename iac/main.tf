terraform {
  required_version = "1.3.6"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "${{ secrets.AWS_ACCESS_KEY_ID }}"
  secret_key = "${{ secrets.AWS_SECRET_ACCESS_KEY_DEV }}"

}