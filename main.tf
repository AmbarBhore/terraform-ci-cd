module "iam" {
        source = "./modules/iam-user"
}

module "s3" {
    source = "./modules/s3-bucket"
}