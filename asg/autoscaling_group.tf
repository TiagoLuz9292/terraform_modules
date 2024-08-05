resource "aws_autoscaling_group" "asg" {
  depends_on = [null_resource.provision_master]

  name                 = "asg"
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_zone_identifier  = var.subnet_ids
  target_group_arns    = var.target_group_arns

  tag {
    key                 = "Name"
    value               = "test"
    propagate_at_launch = true
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
        launch_template_id = aws_launch_template.worker.id
        version            = "$Latest"
      }

      override {
        instance_type = var.instance_type
      }
    }
  }
}
