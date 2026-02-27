output "aws_public_ip" {
  value = aws_instance.monitor.public_ip
}
