module "network" {
  source = "./modules"
  


  sg_rules = [
    {
      type        = "ingress"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "SSH"
    },
    {
      type        = "egress"
      from_port   = 0
      to_port     = 0
      
      cidr_blocks = ["0.0.0.0/0"]
      description = "All traffic"
    }
  ]
}