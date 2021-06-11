provider "aws" {
    region = AWS_REGION  
}

data "aws_availability_zones" "available" {}