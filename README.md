# `Azure DevOps Demo`

A complete end-to-end demo of deploying a containerized .NET microservice to Azure using **Terraform** and **GitHub Actions**.

---

## 🚀 What’s Inside

* ✅ A minimal `.NET 8 Web API` (`hello-api`)
* ✅ Fully modular **Terraform infrastructure**
* ✅ Two GitHub Actions workflows:

  * `provision-infra.yml` – for infrastructure provisioning
  * `build-and-deploy.yml` – for CI/CD deployment
* ✅ Integration with:

  * **Azure App Service**
  * **Azure Container Registry (ACR)**
  * **Azure Key Vault**
  * **Application Insights**

---

## 📁 Project Structure

```bash
azure-devops-demo/
├── .github/workflows/
│   ├── provision-infra.yml       # Terraform apply
│   └── build-and-deploy.yml      # CI/CD for .NET App
├── src/hello-api/                # Minimal .NET 6 API
├── terraform/
│   ├── main.tf                   # Root Terraform composition
│   ├── modules/                  # All infrastructure modules
│   └── envs/dev.tfvars           # Dev environment inputs
└── README.md
```

---

## 🧱 Infrastructure Provisioned

* `Azure Resource Group`
* `Azure Container Registry (ACR)`
* `App Service Plan` (Linux)
* `App Service` (Web App for Containers)
* `Azure Key Vault`
* `Application Insights`

Provisioned via **modular Terraform** configuration.

---

## ⚙️ GitHub Actions Workflows

### 🛠 `provision-infra.yml`

* Runs Terraform `init`, `plan`, `apply`
* Uses `dev.tfvars` for environment configuration
* Requires GitHub Secret: `AZURE_CREDENTIALS`

### 🚀 `build-and-deploy.yml`

* Builds the Docker image for the app
* Pushes image to ACR
* Deploys image to Azure App Service using commit SHA as tag

---

## 🔐 Required GitHub Secrets

| Secret Name         | Description                                          |
| ------------------- | ---------------------------------------------------- |
| `AZURE_CREDENTIALS` | JSON output of `az ad sp create-for-rbac --sdk-auth` |

---

## ▶️ How to Run the Demo

1. Clone this repo
2. Add required secrets to your GitHub repo
3. Trigger `Provision Infrastructure` workflow manually
4. Push a commit to `/src/hello-api` to trigger `build-and-deploy.yml`
5. Visit the deployed **App Service URL**

---

## 🌐 Expected Output

When you open the App Service URL:

```
Hello from Azure App Service!
```

---

## 🧠 Why This Demo Matters

This project demonstrates:

* Infrastructure-as-Code using **Terraform**
* DevOps automation using **GitHub Actions**
* Deployment of containerized apps to **Azure App Service**
* Clean separation of concerns between **infra** and **app**
* Scalable and production-aligned practices in a minimal setup

---

## 📫 Contact

**Muhammad Hassaan Javed**
[GitHub](https://github.com/itxcrusher) — [Website](https://muhammadhassaanjaved.com)