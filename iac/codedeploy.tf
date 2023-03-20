resource "aws_codedeploy_app" "example" {
  name = "example-app"
}
resource "aws_codedeploy_deployment_group" "example" {
  app_name              = aws_codedeploy_app.example.name
  deployment_group_name = "example-group"
  service_role_arn      = aws_iam_role.codedeploy_service.policy_arn

    ec2_tag_set {
      ec2_tag_filter {
      Name   = "http_server"
      type  = "KEY_AND_VALUE"
      value = "filtervalue"
     }

    }
}