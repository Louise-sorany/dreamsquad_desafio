locals {
  project_name = "sioeuzal"
  environment  = var.environment

  repo_name = "${local.project_name}-${data.aws_caller_identity.current.account_id}"

  tags = {
    Project     = local.project_name
    Environment = local.environment
    Terraform   = "true"
    Module      = "backend"
  }
}