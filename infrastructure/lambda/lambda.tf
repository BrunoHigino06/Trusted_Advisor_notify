#Lambda function to execute the trusted advisor API
resource "aws_lambda_function" "MainLambda" {
  filename      = "./infrastructure/lambda/lambdacode/${var.MainLambda.filename}"
  function_name = var.MainLambda.function_name
  role          = var.MainLambda.role
  handler       = "${var.MainLambda.handler}.lambda_handler"
  runtime = var.MainLambda.runtime
  description = "Function to evoke the trusted advisor and get the unused resources"
}

#Cloudwatch event
resource "aws_cloudwatch_event_rule" "every_day" {
  name = var.every_day.name
  schedule_expression = var.every_day.schedule_expression
  description = "Event rule to execute the lambda function"
}


#Cloudwatch event target
resource "aws_cloudwatch_event_target" "invoke_lambda" {
  rule = var.every_day.rule
  arn = aws_lambda_function.MainLambda.arn
}

#CloudWatch Event execution
resource "aws_lambda_permission" "allow_cloudwatch" {
  statement_id  = var.allow_cloudwatch.statement_id
  action        = var.allow_cloudwatch.action
  function_name = aws_lambda_function.MainLambda.function_name
  principal     = var.allow_cloudwatch.principal
  source_arn    = aws_cloudwatch_event_rule.every_day.arn
}