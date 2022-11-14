#Lambda function to execute the trusted advisor API
resource "aws_lambda_function" "MainLambda" {
  filename      = "./infrastructure/lambda/lambdacode/${var.MainLambda.filename}"
  function_name = var.MainLambda.function_name
  role          = var.MainLambda.role
  handler       = "${var.MainLambda.handler}.lambda_handler"
  runtime = var.MainLambda.runtime
}

#CloudWatch Event execution
resource "aws_lambda_permission" "allow_cloudwatch" {
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.MainLambda.function_name
  principal     = "events.amazonaws.com"
  source_arn    = "arn:aws:events:eu-west-1:111122223333:rule/RunDaily"
}