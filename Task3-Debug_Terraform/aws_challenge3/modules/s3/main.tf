resource "aws_s3_bucket" "example" {
  provider = "second"
  name = "task3-debug-me-bucket"
}