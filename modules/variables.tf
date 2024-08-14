variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "0.0.0.0/16"
}

variable "sg_rules" {
  description = "Security group rules"
  type = list(object({
    type        = string
    from_port   = optional(number)
    to_port     = optional(number)
    protocol    = optional(string, "-1")
    cidr_blocks = optional(list(string), ["0.0.0.0/0"])
    description = optional(string, "")
  }))
  default = []
}