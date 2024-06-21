# Terraform AWS Infrastructure Configuration

This Terraform project is designed to provision AWS infrastructure components using modular and reusable configurations.

## Project Structure

The project structure is organized as follows:

-/terraform
  - main.tf
  - variables.tf
  - outputs.tf
  - backend.tf
  - modules
    - vpc
      - main.tf
      - variables.tf
      - outputs.tf
    - subnet
      - main.tf
      - variables.tf
      - outputs.tf
  - terraform.tfvars
  - .gitignore
  - README.md

### breif overview of files 

- `main.tf`: Contains the main configuration for provisioning AWS infrastructure and calls the child modules for example VPC,subnet.
- `variables.tf`: Defines input variables used in the main configuration and modules.
- `outputs.tf`: Defines output variables to get information about created resources.
- `backend.tf`: Configures Terraform backend settings, such as AWS S3 for state storage.
- `modules/vpc`: Directory for the VPC module with its own main, variables, and outputs files.
- `modules/subnet`: Directory for the subnet module with its own main, variables, and outputs files.
- `terraform.tfvars`: File to set input variables' values (not committed to version control).
- `dev.tfvars`: Variable file containing list of variable used in Parent terraform configuration (Only specifes the name of variable not value)
- `.gitignore`: Excludes sensitive or generated files from version control.
- `README.md`: This file providing an overview of the Terraform project.

#### Usage
 Clone the repository:
   
   git clone https://github.com/your-username/terraform-project.git # Clone the Git repository to your local machine

   cd terraform-project # Navigate to the project directory

   terraform init # Initialize Terraform in the project directory

   terraform validate  # Validate the Terraform configuration files for syntax and other errors

   terraform plan -var-file="dev.tfvars" -out="random"  # use var-file="dev.tfvars" to use specific tfvars file to use declared variables , -out="random" Generate an execution plan and save it to a file named "random"

   terraform apply random # Apply the generated execution plan to create or update resources


##### Variable naming convention inside module (Snake Case)
var.resource_name_attribute_name
for example: var.subnet_vpc_id

###### default value to be defined inside module 
sample_resourcename 
for example: sample_subnet

# Variable naming convention calling in Parent module
var.env_resource_name_attribute_name
