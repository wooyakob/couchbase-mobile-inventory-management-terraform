output "connection_string" {
  description = "Capella cluster connection string for cbimport and app configuration"
  value       = module.cluster.connection_string
}

output "db_credential_password" {
  description = "Auto-generated password for the simple-retail database user"
  value       = module.db_credentials.db_credential_password
  sensitive   = true
}

output "allowed_cidr" {
  description = "The current IP address allowlisted for database access"
  value       = module.allowed_ip.allowed_cidr
}



