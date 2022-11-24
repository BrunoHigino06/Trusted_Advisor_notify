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
#Lambda module inputs

#Lambda function inputs
MainLambda = {
    filename = "trustedadvisor_notify.zip"
    function_name = "trustedadvisor_notify"
    runtime = "python3.8"
}

#Cloudwatch event inputs
every_day = {
    name = "daily execution"
    schedule_expression = "rate(1 day)"
}

#CloudWatch Event execution inputs
allow_cloudwatch = {
    statement_id = "AllowExecutionFromCloudWatch"
    action = "lambda:InvokeFunction"
    principal = "events.amazonaws.com"
}
