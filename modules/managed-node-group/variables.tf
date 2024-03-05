variable "project_name" {
  type        = string
  description = "its the project name to be used"
}

variable "tags" {
  type        = map(any)
  description = "tags to be added to aws resources"
}

variable "cluster_name" {
  type        = string
  description = "eks cluster name to create mng"
}

variable "subnet_private_1a" {
  type        = string
  description = "subnet priv id from 1a"
}

variable "subnet_private_1b" {
  type        = string
  description = "subnet priv id from 1b"
}