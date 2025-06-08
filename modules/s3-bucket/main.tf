provider "aws" {
	region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
	bucket = "ambar-ci-cd-bucket12999"
}