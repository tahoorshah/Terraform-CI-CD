# Terraform CI/CD Pipeline with GitHub Actions

Automated Infrastructure as Code (IaC) pipeline that provisions AWS infrastructure using Terraform, triggered and managed through GitHub Actions. Demonstrates end-to-end DevOps automation from code commit to cloud deployment.

---

## 🛠️ Tech Stack

- **Terraform** — Infrastructure as Code
- **GitHub Actions** — CI/CD pipeline automation
- **AWS** — cloud infrastructure target
- **HCL** — HashiCorp Configuration Language

---

## 🏗️ Pipeline Overview

```
Code Push → GitHub Actions Trigger → Terraform Init → Terraform Plan → Terraform Apply → AWS Infrastructure Live
```

The pipeline automates the full Terraform lifecycle:
- `terraform init` — initializes providers and backend
- `terraform validate` — checks configuration syntax
- `terraform plan` — previews infrastructure changes
- `terraform apply` — provisions resources on AWS

---

## 📁 Project Structure

```
Terraform-CI-CD/
├── .github/
│   └── workflows/
│       └── terraform.yml   # GitHub Actions pipeline definition
├── main.tf                 # Core infrastructure resources
├── variables.tf            # Input variables
├── provider.tf             # AWS provider configuration
└── outputs.tf              # Output values
```

---

## ⚙️ GitHub Actions Workflow

The workflow triggers on:
- **Push to `main`** — runs full `plan` + `apply`
- **Pull Requests** — runs `plan` only for review before merge

Secrets required in GitHub repository settings:
```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```

---

## 🚀 Getting Started

### Prerequisites
- AWS account with IAM credentials
- Terraform installed locally (for manual runs)
- GitHub repository with Actions enabled

### Local Run

```bash
terraform init
terraform plan
terraform apply
```

### CI/CD Run
Push to `main` branch — GitHub Actions handles the rest automatically.

---

## 💡 Key Concepts Demonstrated

- **GitOps** — infrastructure changes driven by Git commits
- **Automated IaC** — no manual `terraform apply` needed in production
- **Secret management** — AWS credentials stored as GitHub Secrets, never hardcoded
- **Plan before apply** — PR workflow ensures changes are reviewed before deployment

---

## 🔗 Related Projects

- [terraform-aws-ec2-nginx](https://github.com/tahoorshah/terraform-aws-ec2-nginx) — Terraform AWS provisioning
- [Kubernetes-CI-CD](https://github.com/tahoorshah/Kubernetes-CI-CD) — Kubernetes with GitHub Actions

---

## 📝 Author

**Syed Tahoor Ali Shah**
- GitHub: [@tahoorshah](https://github.com/tahoorshah)
- Medium: [@tahoorshah](https://medium.com/@tahoorshah)
- LinkedIn: [syedtahooralishah](https://linkedin.com/in/syedtahooralishah)
