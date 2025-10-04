variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ca-central-1"
}

variable "project_name" {
  description = "Name of the project for resource tagging"
  type        = string
  default     = "multi-os-servers"
}

variable "environment" {
  description = "Environment name for resource tagging"
  type        = string
  default     = "production"
}

variable "key_pair_name" {
  description = "Name of the existing EC2 key pair"
  type        = string
  default     = "sept23"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 20
}

variable "amazon_linux_count" {
  description = "Number of Amazon Linux instances to create"
  type        = number
  default     = 1
}

variable "ubuntu_count" {
  description = "Number of Ubuntu instances to create"
  type        = number
  default     = 1
}

variable "vpc_id" {
  description = "VPC ID where instances will be deployed"
  type        = string
  default     = "vpc-04506647567d5bc52"
}

variable "subnet_ids" {
  description = "List of subnet IDs where instances will be distributed"
  type        = list(string)
  default     = ["subnet-0798b7abbe865183f", "subnet-065dca0942edc6634"]
}

variable "ubuntu_ami" {
  description = "AMI ID for Ubuntu instances"
  type        = string
  default     = "ami-0cc2c3cfc20208070"
}

variable "amazon_linux_ami" {
  description = "AMI ID for Amazon Linux instances"
  type        = string
  # This is a common Amazon Linux 2 AMI for ca-central-1 - you may want to verify it
  default     = "ami-029c5475368ac7adc"
}