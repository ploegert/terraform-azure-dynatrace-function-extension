# ==================================================
# Provider info:
# ==================================================
variable "deployment" {
  type = object({
    client_id           = string
    client_secret       = string
    client_obj_id       = string
    subscription_id     = string
    tenant_id           = string
  })
}

# ==================================================
# Variable info:
# ==================================================

variable "app_service_plan_name" {
  description = "The name of the app service that we will install the extension to"
}
variable "app_service_name" {
  description = "The name of the app service that we will install the extension to"
}
variable "resource_group_name" {
  description = "the resource group the app service plan exists in"
}
variable "location" {
  default = "East US 2"
  description = "The location the various resources are deployed into"
}


# ==================================================
# dynatrace Variables:
# ==================================================
variable "dynatrace" {
  type = object({
    DT_TENANT = string
    DT_API_TOKEN = string
    DT_API_URL = string
  })
}