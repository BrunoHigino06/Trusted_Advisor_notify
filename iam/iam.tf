#Role to enable Lambda to acess the SNS and Trusted Advisor
resource "aws_iam_role" "Lambda_role" {
  name = var.Lambda_role.name
  assume_role_policy = file("./iam/json/${var.Lambda_role.assume_role_policy}")

  tags = {
    name = var.Lambda_role.name
  }
}

#Policy to Acess SNS and Trusted Advisor using the Lambda Fuction
resource "aws_iam_policy" "SNS_TAdvisor_policy" {
  name        = var.SNS_TAdvisor_policy.name
  path        = "/"
  description = var.SNS_TAdvisor_policy.description

  policy = file("./iam/json/${var.SNS_TAdvisor_policy.policy}")
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.Lambda_role.name
  policy_arn = aws_iam_policy.SNS_TAdvisor_policy.arn
}