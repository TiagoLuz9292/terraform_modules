resource "aws_launch_template" "blue_launch_template" {
  count = var.deployment_strategy == "blue-green" ? 1 : 0
  name_prefix      = "${var.name_prefix}-green"
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

resource "aws_launch_template" "green_launch_template" {
  count = 1
  name_prefix      = "${var.name_prefix}-blue"
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