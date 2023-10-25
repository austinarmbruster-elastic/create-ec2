variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "project" {
  description = "Tag for what makes this deployment different from others"
  type        = string
}

variable "division" {
  type    = string
  default = "field"
}

variable "org" {
  type    = string
  default = "sa"
}

variable "team" {
  type    = string
  default = "us-public-sector"
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
