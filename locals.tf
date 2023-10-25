locals {

  deployment_name = var.project

  name = "${local.deployment_name}-ec2"

  required_tags = {
    "division" = var.division
    "org"      = var.org
    "team"     = var.team
    "project"  = var.project
  }

  tags = merge(var.tags, local.required_tags)
}
