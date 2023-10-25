variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "Key pair name"
  type        = string
}

variable "region" {
  description = "Which AWS region should the key be deployed to"
  type        = string
}
