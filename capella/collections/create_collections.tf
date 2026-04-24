locals {
  scope_collections = flatten([
    for s in var.scopes : [
      for c in var.collections : {
        scope      = s
        collection = c
      }
    ]
  ])
}

resource "couchbase-capella_collection" "new_collection" {
  for_each = { for sc in local.scope_collections : "${sc.scope}.${sc.collection}" => sc }

  organization_id = var.organization_id
  project_id      = var.project_id
  cluster_id      = var.cluster_id
  bucket_id       = var.bucket_id
  scope_name      = each.value.scope
  collection_name = each.value.collection
}

output "new_collections" {
  value = couchbase-capella_collection.new_collection
}
