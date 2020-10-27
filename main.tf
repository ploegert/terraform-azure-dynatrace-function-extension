
terraform {
  required_version = ">= 0.13"
}

#+=======================================================================================
# Data - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/app_service
#+=======================================================================================
data "azurerm_app_service_plan" "obc_asp" {
  name                = var.app_service_plan_name
  resource_group_name = var.resource_group_name
}

#+=======================================================================================
# ARM template for Azure Function extension for Dynatrace
#+=======================================================================================
resource "azurerm_template_deployment" "dynatrace_functions_extension" {
    name                = var.app_service_plan_name
    resource_group_name = var.resource_group_name
    template_body       = file("${path.module}/arm/function-dynatrace-extension.json")

    parameters = {
        app_svc_plan    = data.azurerm_app_service_plan.obc_asp.id
        DT_TENANT       = var.dynatrace.DT_TENANT
        DT_API_TOKEN    = var.dynatrace.DT_API_TOKEN
        DT_API_URL      = var.dynatrace.DT_API_URL
        location        = var.location
    }
    deployment_mode = "Incremental"
    depends_on = [
        data.azurerm_app_service_plan.obc_asp
    ]
}