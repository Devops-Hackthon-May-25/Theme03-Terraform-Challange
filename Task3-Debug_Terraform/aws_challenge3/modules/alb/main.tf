
module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "6.0.0"

  name               = "task3-debug-me-alb"
  load_balancer_type = "application"
  vpc_id             = module.vpc.vpc_id
  subnets            = module.vpc.public_subnets

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  target_groups = [
    {
      name_prefix      = "task3-debug-me-tg"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      health_check = {
        enabled             = true
        interval            = 30
        path                = "/"
        timeout             = 5
        healthy_threshold   = 5
        unhealthy_threshold = 2
        matcher             = "200"
      }
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
