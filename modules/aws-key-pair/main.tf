resource "tls_private_key" "instance_key_pair" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = var.name
  public_key = tls_private_key.instance_key_pair.public_key_openssh
}
