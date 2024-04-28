variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "name filter and owner for ami"
  
  type = object ({
    name = string
    owner = string
  })

  default = {
    name = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
    owners = ["979382823631"] # Bitnami
  }
}

variable "environment" {
  description = "development env"
  
  type = object({
    name = string
    network_prefix = string
  })

  defualt = {
    name = "dev"
    network_prefix = "10.0"
  }
}

variable "asg_min_size" {
  description = "min no of instance in asg"
  default = 1
}

variable "asg_max_size" {
  description = "max no of instance in asg"
  default = 2
}