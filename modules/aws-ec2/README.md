# Simplify EC2 Creation for Simple Projects

Some AWS environments have EC2 tagging requirements.
If the instance isn't tagged appropriately, the instance is rejected and not instantiated.
This project ensures that an instance can be quickly spun up to meet the tagging requirements.

## Pre-work

You will need AWS credentials to allow Terraform to create an EC2 instance, an EBS volume, and a key pair.
The credentials can be provided as environment variables:

- TF_VAR_aws_access_key
- TF_VAR_aws_secret_key

## Creating the Instance

The simplest way to create the instance is to run `make`.
It will both initialize terraform and apply the environment definition.

### Configuring the Instance

The setup has a number of options listed in the variables.tf file.
The only required input is the project name.
This can be provided as terraform runs from the `make` command or in a `terraform.tfvars` file.

The other likely configuration items are:

- instance_type
- ebs_size

## Accessing the Instance

The simplest way to access the instance is to run `make ssh`.
This will make sure that the private key is in the right location and creates an SSH session to the instance.

The key pair to access the instance was generated as a part of the instance creation, and it is available as a part of the terraform output.
The key will be stored in the _hw.pem_ file.

## Removing the Instance

The simplest way to remove the instance and key is to run `make destroy`
