terraform {
  backend "s3" {
      bucket = "tf-state-1994"
      key = "dev-eks/terraform_state"
      region = "eu-central-1"
  }
}