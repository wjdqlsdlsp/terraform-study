resource "aws_instance" "ec2" {
  ami = "ami-0ea5eb4b05645aa8a"
  instance_type = terraform.workspace == "defaults" ? "t3.medium" : "t3.nano"
  subnet_id = "subnet-002b49644c2c07b2d"

  tags = {
    Name = "terraform-example"
  }

  user_data = <<-EOF
                #!/bin/bash
                echo "<h1>${data.terraform_remote_state.db.outputs.address}</h1>" >> index.html
                echo "<h1>${data.terraform_remote_state.db.outputs.port}</h1>" >> index.html
                nohup busybox httpd -f -p ${var.server_port} &
                EOF
  vpc_security_group_ids = [aws_security_group.instance.id]
}