resource "aws_ecs_task_definition" "td" {
  container_definitions = jsonencode([
    {
      name         = "app"
      image        = "${var.ACCOUNT_ID}.dkr.ecr.${var.aws_region}.amazonaws.com/${var.ecr_repo}"
      cpu          = 256
      memory       = 512
      essential    = true
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
    }
  ])
  family                   = "app"
  requires_compatibilities = ["FARGATE"]

  cpu                = "256"
  memory             = "512"
  network_mode       = "awsvpc"
  task_role_arn      = "arn:aws:iam::${var.ACCOUNT_ID}:role/ecsTaskExecutionRole"
  execution_role_arn = "arn:aws:iam::${var.ACCOUNT_ID}:role/ecsTaskExecutionRole"
}