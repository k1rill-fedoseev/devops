variable "ami_id" {
  type        = string
  description = "AMI ID to use"
  default     = "ami-05f7491af5eef733a"
}

variable "instance_type" {
  type        = string
  description = "Instance type to use"
  default     = "t2.micro"
}

variable "region" {
  type        = string
  description = "Region to use"
  default     = "eu-central-1"
}