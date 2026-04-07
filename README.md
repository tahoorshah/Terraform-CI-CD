# Terraform CI/CD Lab

This repository demonstrates integrating Terraform with CI/CD pipelines using GitHub Actions.

## Structure

- `terraform/` - Terraform configuration files
- `.github/workflows/` - GitHub Actions workflow files
- `scripts/` - Helper scripts

## Workflows

- **terraform-plan.yml** - Runs on pull requests to show planned changes
- **terraform-apply.yml** - Runs on main branch to apply changes

## Usage

1. Make changes to Terraform files
2. Create a pull request
3. Review the plan output in the PR
4. Merge to main to apply changes
