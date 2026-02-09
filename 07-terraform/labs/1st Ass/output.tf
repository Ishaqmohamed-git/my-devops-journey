output "wordpress_url" {
  description = "Public URL for the WordPress site"
  value       = "http://${aws_instance.challenge-t4.public_ip}"
}
