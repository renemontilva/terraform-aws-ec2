resource "aws_instance" "this" {
  ami               = var.ami_id
  availability_zone = var.az
  instance_type     = var.instance_type
  security_groups   = var.security_group_ids
  subnet_id         = var.subnet_id

  tags = {
    "Environment" = var.environment
  }

}
