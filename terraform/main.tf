# Generate random string for unique naming
resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}

# Create multiple local files
resource "local_file" "demo_files" {
  count = var.file_count
  
  filename = "${path.module}/generated/demo-${var.environment}-${count.index + 1}-${random_string.suffix.result}.txt"
  content  = <<-EOT
    Environment: ${var.environment}
    Project: ${var.project_name}
    File Number: ${count.index + 1}
    Generated at: ${timestamp()}
    Random Suffix: ${random_string.suffix.result}
  EOT
}

# Create a summary file
resource "local_file" "summary" {
  filename = "${path.module}/generated/summary-${var.environment}-${random_string.suffix.result}.json"
  content = jsonencode({
    environment   = var.environment
    project_name  = var.project_name
    file_count    = var.file_count
    files_created = local_file.demo_files[*].filename
    timestamp     = timestamp()
    random_suffix = random_string.suffix.result
  })
}
