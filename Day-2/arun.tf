 # Multiple Providers


# You can use multiple providers in one single terraform project. For example,


# 1. Create a providers.tf file in the root directory of your Terraform project.

# 2. In the providers.tf file, define the AWS and Azure providers. For example:

# why we need provider

#In Terraform, the provider block tells Terraform which cloud platform (like AWS, Azure, or Google Cloud)
 #to use for creating and managing resources. It acts as a connection between Terraform and the cloud provider,
  #letting Terraform know where to set up your servers or other services. For example, in AWS,
   #the provider block includes details like the region to use, so Terraform knows exactly where to create the resources.

# Here we are define aws provider.  Only provider resource after azure.

provider "aws" {
    region = "ap-south-1"
}


# Here we define azure provider. 




# 3. In your other Terraform configuration files, you can then use the aws and azurerm
#    providers to create resources in AWS and Azure, respectively,


resource "aws_instance" "example" {
    ami = "ami-0fd05997b4dff7aac"
    subnet_id = "subnet-0399fd0c820cbd269"
    key_name = "arun123"
    instance_type = "t2.micro"

    tags = {
        name = "kumar"
    }
}