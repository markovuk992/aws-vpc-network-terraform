variable "region_name" {
  description = "Region name to launch VPC network"
  type        = string
  default     = "us-east-2"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "development"
}

variable "public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["10.10.0.0/24", "10.10.2.0/24"]
}

variable "private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["10.10.1.0/24", "10.10.3.0/24"]
}

variable "public_az" {
  description = "AZ names for public subnets"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}

variable "private_az" {
  description = "AZ names for private subnets"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}
