module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "study-single-instance"

  instance_type          = "t2.micro"
  key_name               = "" # in .env
  monitoring             = true
  vpc_security_group_ids = [""] # in .env
  subnet_id              = "subnet-041142f6e1bb845f3"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}