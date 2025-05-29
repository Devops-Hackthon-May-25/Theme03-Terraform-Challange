provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "secondary"
  region = "eu-west-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "webserver" {
  source = "./modules/webserver"
}

module "alb" {
  source = "./modules/alb"
}

output "instance_id" {
  value = module.webserver.instance_id
}

output "bucket_arn" {
  value = module.alb.bucket_arn
}

output "ami_id" {
  value = data.aws_ami.example.id
}
