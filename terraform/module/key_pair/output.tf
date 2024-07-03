output "module_private_key_pem" {
  value     = tls_private_key.main.private_key_pem
  sensitive = true
}

output "module_public_key_openssh" {
  value = tls_private_key.main.public_key_openssh
}

output "module_key_pair_name" {
  value = aws_key_pair.generated_key.key_name
}