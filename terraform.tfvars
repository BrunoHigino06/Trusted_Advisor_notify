#Iam inputs
#Lambda role inputs
Lambda_role = {
    name = "Lambda_Trusted_Advisor_notify"
    assume_role_policy = "Lambda_access.json"
}

#Lambda policy inputs
SNS_TAdvisor_policy = {
    name = "SNS_TAdvisor_policy"
    description = "Policy to lambda acess the SNS and Trusted Advisor"
    policy = "SNS_TAdvisor_policy.json"
}

#Infrastructure inputs
#Lambda function inputs
MainLambda = {
    filename = "trustedadvisor_notify.zip"
    function_name = "trustedadvisor_notify"
    runtime = "python3.8"
}

#CloudWatch Event execution inputs
1
