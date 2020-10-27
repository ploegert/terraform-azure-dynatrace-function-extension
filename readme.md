
# terraform-azure-dynatrace-function-extension
The purpose of this repo is to provide a base terraform modules for deploying the Dynatrace azure function extension. This modules assumes the following resources areaalready existing and are passed into the module:

- Resource Group
- Azure App Service/Plan

## Example Invocation:
Calling function:

```t
module "function_extension" {
    source = "github.com/ploegert/terraform-azure-dynatrace-function-extension"

    deployment             = local.workspace["deployment"] 
    dynatrace              = local.workspace["dynatrace"]

    app_service_plan_name  = local.workspace["app_service_plan_name"]
    resource_group_name    = local.workspace["resource_group_name"]
    location               = local.workspace["location"]
    
}
```