data "aws_ami" "this" {
  most_recent = true
  owners      = var.instance_owner

  filter {
    name   = "name"
    values = var.instance_name
  }

  filter {
    name   = "architecture"
    values = var.instance_arch
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

}

resource "aws_instance" "this" {
  ami               = data.aws_ami.this.id
  availability_zone = var.az
  instance_type     = var.instance_type
  security_groups   = var.security_group_ids
  subnet_id         = var.subnet_id

  tags = {
    "Environment" = var.environment
  }

}
