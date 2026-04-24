variable "organization_id" {
  description = "Capella Organization ID"
}

variable "project_id" {
  description = "Capella Project ID"
}

variable "cluster_id" {
  description = "Capella Cluster ID"
}

variable "app_service_id" {
  description = "Capella App Service ID"
}

variable "bucket_name" {
  description = "Bucket name for the app endpoint"
}

variable "auth_token" {
  description = "Authentication API Key"
}

variable "endpoints" {
  description = "Map of app endpoints to create"
  type = map(object({
    scope       = string
    collections = list(string)
  }))
  default = {
    "supermarket-aa" = {
      scope       = "AA-Store"
      collections = ["orders", "inventory", "profile"]
    }
    "supermarket-nyc" = {
      scope       = "NYC-Store"
      collections = ["orders", "inventory", "profile"]
    }
  }
}
