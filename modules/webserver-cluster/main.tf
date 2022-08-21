resource "aws_instance" "ec2" {
  ami = "ami-0ea5eb4b05645aa8a"
  instance_type = "t3.nano"
  subnet_id = aws_subnet.main.id
  user_data = <<-EOF
                #!/bin/bash
                echo "hello world" > index.html
                nohup busybox httpd -f -p ${var.server_port} &
                EOF
  vpc_security_group_ids = [aws_security_group.instance.id]

  tags = {
    Name = var.cluster_name
  }
}