resource "aws_launch_template" "instance" {
  name_prefix      = var.name_prefix
  image_id         = var.instance_ami
  instance_type    = var.instance_type
  key_name         = var.key_name

  network_interfaces {
    associate_public_ip_address = true
    security_groups             = [var.security_group_id]
  }

  iam_instance_profile {
    name = var.instance_profile
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name  = var.instance_name
    }
  }

  user_data = base64encode(<<-EOF
    #!/bin/bash

    echo "Starting worker setup script"

  EOF
  )
}
