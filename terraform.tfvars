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
