provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" { 
  ami           = "ami-0fd05997b4dff7aac"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0399fd0c820cbd269"
  key_name      = "arun123"

  tags = {
    name = "kharwar"
  }
}
