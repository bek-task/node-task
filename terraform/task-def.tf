resource "aws_ecs_task_definition" "node_app" {
  family             = "service"
  execution_role_arn = aws_iam_role.ecs_task_execution.arn
  requires_compatibilities = ["FARGATE"]
  network_mode             = "awsvpc"
  cpu = 256
  memory = 512

  container_definitions = jsonencode([
    {
      name      = "node-container"
      image     = "406424876084.dkr.ecr.us-east-1.amazonaws.com/node-app:latest"
      cpu       = 256
      memory    = 512
      essential = true
      portMappings = [
        {
          containerPort = 3000
          hostPort      = 3000
        }
      ]
      secrets = [
        {
          name  = "SECRET_WORD"
          value = "secret_word"
        }
      ]
    }
  ])
}