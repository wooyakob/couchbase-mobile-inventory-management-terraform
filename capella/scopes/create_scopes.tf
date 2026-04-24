output "new_scopes" {
  value = couchbase-capella_scope.new_scope
}

resource "couchbase-capella_scope" "new_scope" {
  for_each        = toset(var.scopes)
  scope_name      = each.value
  organization_id = var.organization_id
  project_id      = var.project_id
  cluster_id      = var.cluster_id
  bucket_id       = var.bucket_id
}
