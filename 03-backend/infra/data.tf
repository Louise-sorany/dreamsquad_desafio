data "aws_caller_identity" "current" {}

data "aws_ecr_repository" "backend" {
  name = var.ecr_repo_name  # Ex: "meu-backend-repo"
}