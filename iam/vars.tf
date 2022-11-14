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