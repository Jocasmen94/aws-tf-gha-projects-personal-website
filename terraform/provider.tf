provider "aws" {

}

terraform {
  backend "s3" {
    bucket            = "tf-resources-jocasmen94"
    region            = "us-east-1"
    key               = "github-actions/terraform.tfstate"
    encrypt           = true
    dynamodb_endpoint = "tf-resources-gha-lock"
  }
}
