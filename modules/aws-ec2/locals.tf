locals {

  deployment_name = var.namespace

  name = "${local.deployment_name}-ec2"

  tags = merge(({ "Name" : local.name }), var.tags)
}
