variable "aws-region"{
    default= "ap-south-1"
}

variable "vpc_cidr"{
    default="10.0.0.0/16"
}

variable "subnet_cidr"{
    type = list
    default = ["10.0.1.0/24" , "10.0.2.0/24"]
}

variable "azs"{
    type = list
    default = ["ap-south-1a" ,"ap-south-1b"]
}
variable "ami-id" {
  type        = string
  default     = "ami-011c99152163a87ae"
  description = "ami id for AMI Image"
}
variable "key" {
  type        = string
  default     = "newKey"
  description = "key name which used to connect from the base os"
}
