variable "auth_token" {
  description = "Authentication API Key"
  sensitive   = true
}

variable "organization_id" {
  description = "Capella Organization ID"
}

variable "project_id" {
  description = "Project ID for Project Created via Terraform"
}

variable "cloud_provider" {
  description = "Cloud Provider details useful for cluster creation"

  type = object({
    name   = string
    region = string
    cidr   = string
  })
}

variable "couchbase_server" {
  description = "Couchbase Server version configuration"

  type = object({
    version = string
  })

}