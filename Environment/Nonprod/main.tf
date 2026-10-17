module "ec2" {
  source = "../../module/ec2"

  instance_name = var.instance_name
  ami_id        = var.ami_id
  instance_type = var.instance_type

  key_name         = var.key_name
  root_volume_size = var.root_volume_size
  ingress_rules    = var.ingress_rules
  egress_rules     = var.egress_rules
  tags             = var.tags

}