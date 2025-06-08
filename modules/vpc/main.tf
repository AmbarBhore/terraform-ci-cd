resource "aws_vpc" "terraform-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        name = "terraform-vpc"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = "aws_vpc.terraform-vpc.vpc_id 
    tags = {
        Name = "terraform-IGW"
    }
}