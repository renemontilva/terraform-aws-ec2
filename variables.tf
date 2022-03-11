variable "environment" {
  type        = string
  description = "Environment."
  default     = "dev"

}

variable "ami_id" {
  type        = string
  description = "(optional) describe your variable"
  default     = "ami-0e1d30f2c40c4c701"
}

variable "az" {
  type        = string
  description = "(optional) describe your variable"
  default     = "us-east-1"
}

variable "instance_type" {
  type        = string
  description = "AWS/EC2 instance type."
  default     = "t3.micro"
}

variable "subnet_id" {
  type        = string
  description = "Subnet that intance belong to."
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security groups"
}

variable "instance_owner" {
  type        = list(string)
  description = "Instance owner."
  default     = ["099720109477"]
}

variable "instance_name" {
  type        = list(string)
  description = "Instance name."
  default     = ["impish"]
}

variable "instance_arch" {
  type        = list(string)
  description = "Instance Arch"
  default     = ["amd64"]
}
