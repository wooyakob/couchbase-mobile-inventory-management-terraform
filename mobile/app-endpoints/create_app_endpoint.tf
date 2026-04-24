resource "couchbase-capella_app_endpoint" "endpoint" {
  for_each        = var.endpoints
  organization_id = var.organization_id
  project_id      = var.project_id
  cluster_id      = var.cluster_id
  app_service_id  = var.app_service_id
  name            = each.key
  bucket          = var.bucket_name

  scopes = {
    (each.value.scope) = {
      collections = {
        for collection in each.value.collections : collection => {
          access_control_function = "function (doc, oldDoc, meta) {channel('${collection}');}"
          import_filter           = ""
        }
      }
    }
  }

  oidc = [
    {
      client_id = "oidc-provider-1"
      issuer    = "https://accounts.google.com"
      register  = true
    }
  ]

  cors = {
    disabled = false
    origin   = ["*"]
    headers  = ["Authorization", "Content-Type"]
    max_age  = 3600
  }
}

output "app_endpoints" {
  value = couchbase-capella_app_endpoint.endpoint
}
