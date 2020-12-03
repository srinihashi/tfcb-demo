provider "aws" {
region     = "us-east-1"
}
resource "aws_instance" "web" {
  ami           = "ami-db24d8b6"
instance_type   = "t2.micro"
#subnet_id              = "subnet-c02e6198"
#vpc_security_group_ids = ["sg-b1fe76ca"]
   tags = {
       Owner = "Srini"
       Created-via = "TFC:tfcb-agent"
    }
}
