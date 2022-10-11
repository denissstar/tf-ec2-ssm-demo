resource "aws_instance" "server" {
  ami           = data.aws_ami.amzlinux.id
  instance_type = "t3.small"
  iam_instance_profile = aws_iam_instance_profile.instance_profile.name

  vpc_security_group_ids = [aws_security_group.server.id]
  subnet_id = data.aws_subnet.private.id

  tags = {
    Name = "SSM Test"
  }
}

