terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {                                                 
  region     = "eu-west-1"
  access_key = "AKIASL7MEYC7NJTOTGXQ"
  secret_key = "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"
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "vpc1"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}

