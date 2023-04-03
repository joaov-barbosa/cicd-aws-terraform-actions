provider "github" {
  token = var.github_token
  owner = "joaov-barbosa"
}

data "github_repository" "repo" {
  full_name = "joaov-barbosa/cicd-aws-terraform-actions"
}

resource "github_actions_variable" "application_name" {
  repository    = data.github_repository.repo.name
  variable_name = "application_name"
  value         = aws_codedeploy_app.example.name
}
resource "github_actions_variable" "deployment_name" {
  repository    = data.github_repository.repo.name
  variable_name = "deployment_name"
  value         = aws_codedeploy_deployment_group.example.deployment_group_name
}

