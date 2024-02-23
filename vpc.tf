resource "aws_vpc" "this" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true

  ## Merge allow add local tags and another tags from resource
  tags = merge(
    local.tags,
    {
      Name = "vpc-eks-terraform"
    }
  )
}

