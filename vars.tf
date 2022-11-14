#Iam vars
#Iam role vars
variable "Lambda_role" {
    type = map(any)
    default = {
      name = ""
      assume_role_policy = ""
    }
  
}

#Policy vars
variable "SNS_TAdvisor_policy" {
    type = map(any)
    default = {
      name = ""
      description = ""
      policy = ""
    }
  
}

#Infrastructure vars
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