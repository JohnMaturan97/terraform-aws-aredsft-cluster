
# Terraform AWS Redshift Database Module

This Terraform module provisions an Amazon Redshift database, designed to allow for scalable storage and retrieval of data across cloud servers.

## Features

- **Scalability**: Easily adjusts to demand, scaling storage as needed without downtime.
- **Security**: Incorporates AWS security best practices, including encrypted data storage and secure access credentials.
- **Cost-Effectiveness**: Utilizes cost-optimization features of AWS to minimize expenditure.

## Usage

To use this module in your Terraform environment, add the following configuration to your Terraform files:

```hcl
module "redshift_database" {
  source  = "path/to/module"

  # Variables
  project_name = "<your-project-name>"
  database_name = "<your-database-name>"
  ...
}
```

## Requirements

- Terraform 0.12+
- AWS provider 2.0+

## Providers

| Name | Version |
|------|---------|
| aws | ~> 3.0 |

## Inputs

Please refer to `variables.tf` for a detailed description of each variable.

## Outputs

Please refer to `outputs.tf` for details about the outputs that this module provides.

## License

See `LICENSE` file for more information.

## Authors

- **John Mharlou N. Maturan**
