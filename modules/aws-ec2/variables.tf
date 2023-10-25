variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "namespace" {
  description = "Tag for what makes this deployment different from others"
  type        = string
}

variable "key_pair_name" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ebs_size" {
  type    = string
  default = "8"
}


variable "region" {
  type    = string
  default = "us-east-1"
}

