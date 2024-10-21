variable "project_name" {
  type        = string
  description = "Project Name to be used to name the resources (Name TAG)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}

variable "oidc" {
  type        = string
  description = "HTTPS URL form OIDC provider of the EKS Cluster"
}

variable "cluster_name" {
  type        = string
  description = "EKS Cluster Name"
}