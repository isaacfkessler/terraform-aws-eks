variable "project_name" {
  type        = string
  description = "its the project name to be used"
}

variable "tags" {
  type        = map(any)
  description = "tags to be added to aws resources"
}