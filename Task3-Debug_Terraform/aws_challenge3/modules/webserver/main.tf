
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.0.0"

  name           = "task3-debug-me-instance"
  instance_count = 1
  ami            = data.aws_ami.example.id
  instance_type  = var.instance_type

  vpc_security_group_ids = [module.vpc.default_security_group_id]
  subnet_id              = module.vpc.public_subnets[0]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

data "aws_ami" "example" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  owners = ["amazon"]
}
