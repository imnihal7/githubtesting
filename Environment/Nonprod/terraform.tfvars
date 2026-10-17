instance_name = "web-server"

ami_id        = "ami-0f58b397bc5c1f2e8"
instance_type = "t3.micro"

key_name = "my-key"

root_volume_size = 20

ingress_rules = [
  {
    description = "SSH"
    port        = 22
    protocol    = "tcp"
    cidr_blocks = ["YOUR_PUBLIC_IP/32"]
  },
  {
    description = "HTTP"
    port        = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    description = "HTTPS"
    port        = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

egress_rules = [
  {
    description = "All Traffic"
    port        = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

tags = {
  Environment = "Dev"
  Owner       = "DevOps"
}



