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

module "infrastructure.lambda" {
    source = ".\\infrastructure\\lamdba\\"
    providers = {
        aws = aws.us
   }

   #Lambda function inputs
   MainLambda = {
        filename = var.MainLambda.filename
        function_name = var.MainLambda.function_name
        role = var.MainLambda.role
        handler = var.MainLambda.handler
        runtime = var.MainLambda.runtime
   }
}