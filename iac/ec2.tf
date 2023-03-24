resource "aws_instance" "ubuntu2" {
  ami                         = "ami-04505e74c0741db8d"
  instance_type               = "t3.micro"
  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      = [aws_security_group.web.id]
  associate_public_ip_address = true
  iam_instance_profile = aws_iam_instance_profile.demo-profile.name
  user_data = <<EOF
  #!/bin/bash
  sudo apt-get update -y
  sudo apt-get install ruby -y
  wget https://aws-codedeploy-ap-southeast-1.s3.ap-southeast-1.amazonaws.com/latest/install
  sudo chmod +x ./install
  sudo ./install auto
  sudo service codedeploy-agent start
  sudo apt install python3-pip -y
  EOF
  tags = {
    Name = "http_server"
  }
}
