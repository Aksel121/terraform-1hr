variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "sg_rules" {
  description = "Security group rules"
  type = list(object({
    type        = string
    from_port   = number
    to_port     = number
    protocol    = optional(string, "-1")
    cidr_blocks = list(string)
    description = string
  }))
  default = []
}