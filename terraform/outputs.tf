output "environment" {
  description = "Environment name"
  value       = var.environment
}

output "files_created" {
  description = "List of files created"
  value       = local_file.demo_files[*].filename
}

output "summary_file" {
  description = "Summary file location"
  value       = local_file.summary.filename
}

output "random_suffix" {
  description = "Random suffix used"
  value       = random_string.suffix.result
}

output "total_resources" {
  description = "Total number of resources created"
  value       = length(local_file.demo_files) + 1
}

output "config_file" {
  description = "Configuration file location"
  value       = local_file.config.filename
}
