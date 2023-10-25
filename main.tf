
module "key_pair" {
  source = "./modules/aws-key-pair"

  name   = "${local.deployment_name}-key-pair"
  region = var.region

  tags = local.required_tags

}

module "ec2" {
  count         = 1
  source        = "./modules/aws-ec2"
  key_pair_name = module.key_pair.key_name
  tags          = local.tags
  namespace     = var.project
  instance_type = var.instance_type
  depends_on    = [module.key_pair]
}
