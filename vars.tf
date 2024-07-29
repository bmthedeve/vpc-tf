variable "region" {
  default = "us-east-1"
  description = "provide the AWS region"
}

variable "cidr_block" {
  default = "11.0.0.0/16"
  description = "Provide the CIDR block for your custom VPC"
}

variable "public-subnet-cidr_block" {
  default = "11.0.1.0/24"
  description = "Provide the CIDR block for your public subnet"
}

variable "private-subnet-cidr_block" {
  default = "11.0.2.0/24"
  description = "Provide the CIDR block for your private subnet"
}