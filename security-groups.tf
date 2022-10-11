resource "aws_security_group" "server" {
  name        = "ssm-server"
  description = "Allow traffic to SSM endpoint"
  vpc_id      = data.aws_vpc.talent_academy.id

  egress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SSM Server"
  }
}