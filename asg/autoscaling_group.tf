terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  alias  = "subaccount"
  region = var.aws_region
}

resource "aws_autoscaling_group" "asg_blue" {

  count                = var.deployment_strategy == "blue-green" ? 1 : 0
  name                 = "blue-${var.asg_name}"
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_zone_identifier  = var.subnet_ids
  target_group_arns    = var.target_group_arns

  dynamic "tag" {
    for_each = var.tags
    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = true
    }
  }

  mixed_instances_policy {
    instances_distribution {
      on_demand_allocation_strategy            = "prioritized"
      on_demand_base_capacity                  = 0
      on_demand_percentage_above_base_capacity = 100
      spot_allocation_strategy                 = "capacity-optimized"
    }

    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.blue_launch_template[0].id
        version            = "$Latest"
      }

      override {
        instance_type = var.instance_type
      }
    }
  }
}

resource "aws_autoscaling_group" "asg_green" {

  count                = var.deployment_strategy == "single" ? 1 : 1
  name                 = "green-${var.asg_name}"
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_zone_identifier  = var.subnet_ids
  target_group_arns    = var.target_group_arns

  dynamic "tag" {
    for_each = var.tags
    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = true
    }
  }

  mixed_instances_policy {
    instances_distribution {
      on_demand_allocation_strategy            = "prioritized"
      on_demand_base_capacity                  = 0
      on_demand_percentage_above_base_capacity = 100
      spot_allocation_strategy                 = "capacity-optimized"
    }

    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.green_launch_template[0].id
        version            = "$Latest"
      }

      override {
        instance_type = var.instance_type
      }
    }
  }
}