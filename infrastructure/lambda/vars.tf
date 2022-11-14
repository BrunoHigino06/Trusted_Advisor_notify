#Lambda vars
#Lambda function vars
variable "MainLambda" {
    type = map(any)
    default = {
      filename = ""
      function_name = ""
      role = ""
      handler = ""
      runtime = ""
    }
}