provider "aws" {
region     = "us-east-1"
}
resource "aws_instance" "web" {
  ami           = "ami-db24d8b6"
  instance_type   = "t2.micro"
  key_name       = "srini-virginia-keys"
  associate_public_ip_address = true
  subnet_id              = "subnet-0844f09ccfb753e74"
  #vpc_security_group_ids = ["sg-b1fe76ca"]
  tags = {
      Owner = "Srini"
      Created-via = "TFC:tfcb-agent"
   }
}
