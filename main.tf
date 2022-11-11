module "iam" {
    source = ".\\iam\\"
    providers = {
    aws = aws.us
   }

    #Iam inputs
    #Lambda role inputs
    Lambda_role = {
        name = var.Lambda_role.name
        assume_role_policy = var.Lambda_role.assume_role_policy
    }

    #Lambda policy inputs
    SNS_TAdvisor_policy = {
        name = var.SNS_TAdvisor_policy.name
        description = var.SNS_TAdvisor_policy.description
        policy = var.SNS_TAdvisor_policy.policy
    }


}