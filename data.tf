data "aws_ami" "amzlinux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }

  owners = ["137112412989"] # Canonical
}

data "aws_vpc" "talent_academy" {
  filter {
    name   = "tag:Name"
    values = ["Talent-Academy-VPC"]
  }
}

data "aws_subnet" "private" {
  filter {
    name   = "tag:Name"
    values = ["Private-A"]
  }
}