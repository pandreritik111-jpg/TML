provider "aws" {
  region = "eu-north-1"
}
 
resource "aws_instance" "monitor" {
  ami           = "ami-0b2d4f5f4b1f9b0c3"   # Free tier AMI eu-north-1
  instance_type = "t3.micro"
 
  user_data = <<-EOF
#!/bin/bash
apt update
apt install -y docker.io
systemctl start docker
 
docker run -d -p 9090:9090 prom/prometheus
docker run -d -p 3000:3000 grafana/grafana
EOF
 
  tags = {
    Name = "aws-monitoring"
  }
}
