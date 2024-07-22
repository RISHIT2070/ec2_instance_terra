variable "ami_id" {
  description = "The ID of the AMI to use for the instance"
}

variable "instance_type" {
  description = "The type of instance to launch"
}

variable "key_name" {
  description = "The name of the key pair to use for SSH access"
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in"
}