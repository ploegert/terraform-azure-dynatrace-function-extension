
# terraform-azure-functions
The purpose of this repo is to provide a base terraform modules for deploying the Dynatrace azure function extension. This modules assumes the following resources areaalready existing and are passed into the module:

- Resource Group
- Azure App Service/Plan

## Example Invocation:
Calling function:

```t
module "function_extension" {
    source = "github.com/ploegert/terraform-azure-dynatrace-function-extension"

    deployment             = local.workspace["deployment"] 
    #deployment             = var.deployment

    app_service_plan_name  = "Some app svc plan name"
    resource_group_name    = "Some resource group name"
    location               = "East US2"
    DT_TENANT              = "Some tenant"
    DT_API_TOKEN           = "Some api token"
    DT_API_URL             = ""

```