variable "cidr_block" {
  type        = string
  description = "Networking CIDR block to used for the VPC"
}

variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources (Name TAG)"
}

variable "region" {
  type        = string
  description = "AWS region to create the resources"
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add all AWS TAGs"
}