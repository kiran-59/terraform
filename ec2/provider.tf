terraform {
    requried_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.66.0"
        }
    }
}
provider "aws" {
    #configuration options
    region = "us-east-1"
}