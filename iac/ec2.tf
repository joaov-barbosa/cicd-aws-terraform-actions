resource "aws_instance" "ubuntu2" {
  ami                         = "ami-04505e74c0741db8d"
  instance_type               = "t3.micro"
  subnet_id                   = module.vpc.public_subnets[0]
  vpc_security_group_ids      = ["${aws_security_group.ssh_private.id}", "${aws_security_group.http.id}", "${aws_security_group.icmp.id}"]
  associate_public_ip_address = true
  iam_instance_profile = aws_iam_instance_profile.demo-profile.name
  tags = {
    Name = "http_server"
  }
}
