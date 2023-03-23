resource "aws_ecs_task_definition" "service" {
  container_definitions = file(./deploy/taskdef.json.json")
}




