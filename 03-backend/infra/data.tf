data "aws_caller_identity" "current" {}

data "aws_ecr_repository" "backend" {
  name = local.repo_name
}