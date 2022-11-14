#Lambda function to execute the trusted advisor API
resource "aws_lambda_function" "MainLambda" {
  filename      = "./infrastructure/lambda/lambdacode/${var.MainLambda.filename}"
  function_name = var.MainLambda.function_name
  role          = var.MainLambda.role
  handler       = var.MainLambda.handler
  runtime = var.MainLambda.runtime
}