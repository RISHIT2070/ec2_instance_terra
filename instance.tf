resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "Example Instance"
  }

  network_interface {
    device_index = 0

    subnet_id = var.subnet_id

    security_groups = [
      aws_security_group.ssh_access.id,
      aws_security_group.http_access.id,
    ]

    associate_public_ip_address = true
  }

  user_data = filebase64("${path.module}/userdata.sh")
}