resource "couchbase-capella_allowlist" "allowed_ip" {
  organization_id = var.organization_id
  project_id      = var.project_id
  cluster_id      = var.cluster_id
  cidr            = var.allowed_cidr
  comment         = "Local machine access for cbimport"
}