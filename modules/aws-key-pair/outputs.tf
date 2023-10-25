output "private_key" {
  value     = tls_private_key.instance_key_pair.private_key_pem
  sensitive = true
}

output "key_name" {
  value = var.name
}
