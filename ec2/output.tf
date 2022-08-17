output "test_ip" {
  description = "This is test_ip"
  value = "${aws_instance.ec2.public_ip}:${var.server_port}"
}
