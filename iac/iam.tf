resource "aws_iam_role" "test_role" {
  name = "Ec2RoleForCodeDeploy"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}
resource "aws_iam_policy_attachment" "demo-attach" {
  name       = "demo-attachment"
  roles      = [aws_iam_role.test_role.name]
  policy_arn = aws_iam_policy.demo-s3-policy.arn
}
resource "aws_iam_instance_profile" "demo-profile" {
  name = "demo_profile"
  role = aws_iam_role.demo-role.name
}
data "aws_iam_policy" "example" {
  arn = "AWSCodeDeployRole"
}