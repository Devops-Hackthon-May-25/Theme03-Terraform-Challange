
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "subnets" {
  description = "A list of subnets"
  type        = list(string)
}
