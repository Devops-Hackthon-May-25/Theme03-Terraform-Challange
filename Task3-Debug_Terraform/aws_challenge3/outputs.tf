
output "instance_id" {
  value = module.webserver.instance_id
}

output "bucket_arn" {
  value = module.alb.bucket_arn
}

output "ami_id" {
  value = data.aws_ami.example.id
}
