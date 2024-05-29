# Azure Firewall Terraform Configuration

This repository contains Terraform configuration files to create and manage an Azure Firewall along with its associated resources such as Virtual Network, Subnet, Firewall Policy, and Public IP.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- Azure subscription
- Service Principal with sufficient permissions

## Getting Started

### Clone the Repository

```sh
git clone <url>
cd azure-firewall-terraform
```

### Configure Terraform

1. Create a `terraform.tfvars` file to specify the variable values.

```hcl
rg_name               = "example-resource-group"
location              = "East US"
vnet                  = "example-vnet"
subnet                = "example-subnet"
sku                   = "Standard"
policy_name           = "example-firewall-policy"
ip_name               = "example-public-ip"
firewall_name         = "example-firewall"
firewall_sku_name     = "AZFW_VNet"
firewall_sku_tier     = "Standard"
ip_configuration_name = "example-ip-configuration"
```

2. Initialize Terraform.

```sh
terraform init
```

3. Validate the configuration.

```sh
terraform validate
```

4. Apply the configuration.

```sh
terraform apply
```

### Variables

The following variables need to be defined in `terraform.tfvars` or directly in the Terraform configuration:

- `rg_name`: The name of the resource group.
- `location`: The Azure region.
- `vnet`: The Azure virtual network name.
- `subnet`: The Azure subnet name.
- `sku`: SKU for firewall policy.
- `policy_name`: The name of the firewall policy.
- `ip_name`: The name of the public IP.
- `firewall_name`: The name of the firewall.
- `firewall_sku_name`: The SKU name for the firewall.
- `firewall_sku_tier`: The SKU tier for the firewall.
- `ip_configuration_name`: The name of the IP configuration.

## Cleanup

To remove all resources created by this configuration, run:

```sh
terraform destroy
```