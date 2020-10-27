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
  #default = ""
  description = "The name of the app service that we will install the extension to"
}
variable "resource_group_name" {
  #default = ""
  description = "the resource group the app service plan exists in"
}
variable "location" {
  default = "East US 2"
  description = "The location the various resources are deployed into"
}
variable "DT_TENANT" {
  #default = ""
  description = "Provide the tenant or environment id descriptor"
}
variable "DT_API_TOKEN" {
  #default = ""
  description = "	Provide the API token associated with dynatrace"
}
variable "DT_API_URL" {
  default = ""
  description = "Optional: Provide this property to configure an alternative communication endpoint"
}