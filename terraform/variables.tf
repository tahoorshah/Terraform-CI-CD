variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "terraform-cicd"
}

variable "file_count" {
  description = "Number of files to create"
  type        = number
  default     = 3
}
