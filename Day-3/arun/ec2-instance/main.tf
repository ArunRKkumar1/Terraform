
#how to call others file and folder by the help of the modules


provider "aws"{
    region = "ap-south-1"
}

module "ec2_instance"{
    source = "./module/ec2_instance"
    ami_value = "ami-0fd05997b4dff7aac"
    instance_type_value = "t2.micro"
  subnet_id_value     = "subnet-0399fd0c820cbd269" 

  tags = {
    name = "arunrk"
  }
}