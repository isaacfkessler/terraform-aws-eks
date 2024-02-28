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

variable "public_subnet_1a" {
  type        = string
  description = "subnet to create eks cluster on az 1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "subnet to create eks cluster on az 1b"
}