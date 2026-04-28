output "allowed_cidr" {
  description = "The CIDR block that was added to the allowlist"
  value       = couchbase-capella_allowlist.allowed_ip.cidr
}
