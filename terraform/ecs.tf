resource "aws_ecs_cluster" "main" {
  name = "my-cluster"
}

resource "aws_ecr_repository" "node" {
  name = "node-app"
}