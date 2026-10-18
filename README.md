# ☁️ Azure Infrastructure with Terraform

**Infrastructure as Code (IaC) | Microsoft Azure | Terraform | Cloud Networking | Linux**

Projeto prático de provisionamento e administração de infraestrutura no Microsoft Azure utilizando Terraform, com foco em automação, redes, segurança, gerenciamento de máquinas virtuais e boas práticas de Cloud Computing.

## 📌 Overview

This project demonstrates the provisioning and management of Azure cloud infrastructure using Terraform.

The environment includes a Virtual Network, Subnet, Network Security Group, Network Interface and an Ubuntu Linux Virtual Machine.

The main objective is to develop hands-on experience with Infrastructure as Code, Azure networking, secure infrastructure provisioning and cloud administration.

## 🏗️ Architecture

```text
Microsoft Azure
│
└── Resource Group: rg-terraform-infra
    │
    └── Virtual Network: vnet-terraform-infra
        │   Address Space: 10.0.0.0/16
        │
        └── Subnet: snet_servidores
            │   Address Range: 10.0.1.0/24
            │
            ├── Network Security Group
            │   └── nsg-servidores
            │
            └── Network Interface
                └── nic_linux01
                    │
                    └── Linux Virtual Machine
                        ├── vm-linux01
                        ├── Ubuntu Server 24.04 LTS
                        ├── Private IP: 10.0.1.4
                        └── No Public IP
```

## 🛠️ Technologies

- **Microsoft Azure** — Cloud infrastructure
- **Terraform** — Infrastructure as Code
- **Azure Virtual Network** — Network connectivity
- **Azure Network Security Groups** — Network security
- **Azure Virtual Machines** — Compute infrastructure
- **Ubuntu Linux** — Server operating system
- **SSH / Ed25519** — Key-based authentication
- **Git & GitHub** — Version control
- **Visual Studio Code** — Development environment

## 📁 Project Structure

```text
azure-infrastructure-terraform/
│
├── providers.tf
├── main.tf
├── network.tf
├── security.tf
├── compute.tf
├── .gitignore
├── .terraform.lock.hcl
└── README.md
```

## ⚙️ Infrastructure Components

| Resource | Description |
|---|---|
| Resource Group | Organizes Azure resources |
| Virtual Network | Provides private network connectivity |
| Subnet | Defines the network segment for servers |
| Network Security Group | Controls inbound and outbound traffic |
| Network Interface | Connects the virtual machine to the subnet |
| Linux Virtual Machine | Ubuntu server deployed using Terraform |

## 🔐 Security

The infrastructure follows these security principles:

- Virtual machine deployed without a public IP address.
- Network Security Group associated with the server subnet.
- No custom inbound rules exposing SSH or RDP to the Internet.
- SSH authentication configured using an Ed25519 public key.
- Private key remains outside the Git repository.
- Terraform state files excluded from version control.

Azure Run Command was used to perform administrative checks without requiring direct SSH connectivity.

**Note:** This is a learning environment. Additional controls would be required for production use.

## 🌐 Network Validation

The following tests were performed successfully:

| Test | Result |
|---|---|
| Terraform configuration validation | Passed |
| Terraform deployment | Successful |
| Private IP verification | 10.0.1.4 |
| Ubuntu operating system verification | Ubuntu 24.04 LTS |
| Linux routing table inspection | Completed |
| HTTPS connectivity test | HTTP/2 200 |
| Azure effective routes inspection | Completed |
| Terraform infrastructure consistency | No changes |

An ICMP test to `1.1.1.1` received no responses. HTTPS connectivity was successful, demonstrating that ICMP failure does not necessarily indicate a complete lack of Internet connectivity.

The environment currently has no NAT Gateway associated with its subnet.

## 🚀 Terraform Workflow

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

Terraform compares the desired configuration with the existing infrastructure and generates an execution plan.

The final verification returned:

```text
No changes. Your infrastructure matches the configuration.
```

## 💰 Cost Management

This project uses an Azure for Students subscription.

To reduce unnecessary consumption of credits:

- A small burstable virtual machine size was selected.
- No Azure Bastion or NAT Gateway was provisioned.
- The virtual machine was deallocated after testing.
- Compute charges stop while the VM is deallocated, although managed disks and other billable resources may continue generating costs.

## 📚 Learning Objectives

- Provision Azure infrastructure with Terraform.
- Understand Azure resource dependencies.
- Configure VNets, subnets and network security groups.
- Deploy and administer Linux virtual machines.
- Apply SSH key-based authentication.
- Investigate network routes and outbound connectivity.
- Validate infrastructure consistency and control cloud costs.

## 📊 Project Status

**Final documentation and validation phase.**

Infrastructure deployment and operational tests completed. Final repository review and documentation are in progress.

## 👨‍💻 Author

**Guilherme Anjos**

Cloud Infrastructure | Azure | Terraform | DevOps

[GitHub](https://github.com/Guilherm-Anjos)