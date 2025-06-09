module "iam" {
        source = "../../modules/iam-user"
        user_name = var.user_name
}

module "s3" {
    source = "../../modules/s3-bucket"
}

module "vpc" {
    source = "../../modules/vpc"
}