# Terraform Project

This repository contains a Terraform project for setting up an AWS infrastructure. The project includes various Terraform configuration files to create and manage AWS resources.

## Files in the Repository

- `.gitattributes` - Ensures that `web.sh` uses LF line endings.
- `backend.tf` - Configuration for the Terraform backend.
- `instance.tf` - Configuration for AWS EC2 instances.
- `providers.tf` - Configuration for Terraform providers.
- `secgrp.tf` - Configuration for AWS security groups.
- `terraform.tfstate` - Terraform state file (this file will be generated after applying the configuration).
- `terraform.tfstate.backup` - Backup of the Terraform state file (this file will be generated after applying the configuration).
- `vars.tf` - Variables used in the Terraform configuration.
- `vpc.tf` - Configuration for AWS VPC and subnets.
- `web.sh` - Shell script for setting up a web server.
- `dovekey_example` - Placeholder for the private key file. (Search and replace dovekey with your key)
- `dovekey_example.pub` - Placeholder for the public key file. (Search and replace dovekey.pub with your key)

## Prerequisites

- Terraform installed on your local machine.
- AWS CLI configured with your credentials.

## Setup Instructions

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/ChristianSosa-Lynch/Terraform.git
    cd Terraform
    ```

2. **Configure AWS CLI**:
    Ensure that your AWS CLI is configured with your credentials:
    ```bash
    aws configure
    ```

3. **Add Your Public and Private Keys**:
    Replace the placeholder `dovekey` and `dovekey.pub` files with your actual private and public key files. Make sure they are named correctly:
    ```plaintext
    dovekey     (your private key file)
    dovekey.pub (your public key file)
    ```

4. **Update `vars.tf`**:
    Edit the `vars.tf` file to include the correct paths for the public and private keys if necessary:
    ```hcl
    variable "PUB_KEY" {
        default = "dovekey.pub"
    }

    variable "PRIV_KEY" {
        default = "dovekey"
    }
    ```

5. **Initialize Terraform**:
    Initialize the Terraform working directory:
    ```bash
    terraform init
    ```

6. **Apply the Configuration**:
    Apply the Terraform configuration to create the AWS resources:
    ```bash
    terraform apply
    ```

    Confirm the apply with `yes`.

## Notes

- **Public and Private Keys**: Ensure you update the `vars.tf` file with the correct paths to your public and private keys.
- **Terraform State**: The `terraform.tfstate` and `terraform.tfstate.backup` files are generated after applying the Terraform configuration. Do not manually edit these files.

## Contributing

If you wish to contribute to this project, please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License.
