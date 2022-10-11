terraform {
  backend "s3" {
    bucket         = "ta-terraform-tfstates-439272626435-deniss"
    key            = "talent-academy/ec2-ssm/terraform.tfstates"
    region         = "eu-central-1"
    dynamodb_table = "terraform-lock"
  }
}