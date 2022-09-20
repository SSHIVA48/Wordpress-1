resource "aws_launch_template" "launch" {
  name_prefix   = "launch"
  image_id      = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "autoscaling" {
  availability_zones = ["us-east-1a"]
  desired_capacity   = 1
  max_size           = 1
  min_size           = 1

  launch_template {
    id      = aws_launch_template.launch.id
    version = "$Latest"
  }
}
