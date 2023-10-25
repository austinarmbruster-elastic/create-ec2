output "private_key" {
  value     = module.key_pair.private_key
  sensitive = true
}

output "instance_public_ip" {
  value = module.ec2[0].instance_public_ip
}

output "all_instance_public_ips" {
  value = module.ec2[*].instance_public_ip
}
