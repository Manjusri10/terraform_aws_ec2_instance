terraform{
    required_providers{

        aws = {
          source = "hashicorp/aws"
          version = "~> 3.27"
          }
       }
         
 required_version = ">= 0.14.9"

}

provider "aws"{
    profile = "default"
    region = "ap-south-1"
}

resource "aws_instance" "app-server"{
         ami = "ami-0f1fb91a596abf28d"
         instance_type = "t2.micro"

    tags = {

        Name = "example_app_server"

         }
}


