provider "aws" {
  region = var.region
}

module "vpc" {
  source               = "./modules/vpc"
  region               = var.region
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
}