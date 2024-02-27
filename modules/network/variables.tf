variable "cidr_block" {
  type        = string
  description = "insert network CIDR block to vpc"
}

variable "region" {
  type        = string
  description = "insert the region of project"
}

variable "project_name" {
  type        = string
  description = "its the project name to be used"
}

variable "tags" {
  type        = map(any)
  description = "tags to be added to aws resources"
}