#Lambda function vars
variable "MainLambda" {
    type = map(any)
    default = {
      filename = ""
      function_name = ""
      handler = ""
      runtime = ""
    }
}

#CloudWatch event vars
variable "every_day" {
    type = map(any)
    default = {
      name = ""
      schedule_expression = ""
    }
}

#CloudWatch Event execution vars
variable "allow_cloudwatch" {
    type = map(any)
    default = {
      statement_id = ""
      action = ""
      principal = ""
    }
}
