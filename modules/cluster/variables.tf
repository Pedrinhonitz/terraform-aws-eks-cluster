variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources (Name TAG)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}

variable "public_subnet_1a" {
  type        = string
  description = "Subnet to create EKS Cluster AZ 1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "Subnet to create EKS Cluster AZ 1b"
}