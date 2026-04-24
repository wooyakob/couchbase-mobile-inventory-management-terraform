variable "organization_id" {
  description = "Capella Organization ID"
}

variable "auth_token" {
  description = "Authentication API Key"
  sensitive   = true
}

variable "project_id" {
  description = "Capella Project ID"
}

variable "cluster_id" {
  description = "Capella Cluster ID"
}

variable "bucket_id" {
  description = "Capella Bucket ID"
}

variable "scopes" {
  description = "List of Capella Scope Names"
  type        = list(string)
}

variable "collections" {
  description = "List of Collection names to create in each scope"
  type        = list(string)
}
