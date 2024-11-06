resource "aws_instance" "ec2" {
  ami = "ami-0745b7d4092315796"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.emir_public_subnet1_eu_central_1a.id
  key_name      = "memir"

  security_groups = [
    aws_security_group.ec2_sg.id
  ]

  iam_instance_profile = "Emirssm"

  tags = {
    Name = "Emirinstance"
    Owner = "Emir"
  }
}

resource "aws_instance" "ec2_2" {
  ami = "ami-0745b7d4092315796"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.emir_public_subnet1_eu_central_1a.id
  key_name      = "memir"

  security_groups = [
    aws_security_group.ec2_sg.id
  ]

  iam_instance_profile = "Emirssm"

  tags = {
    Name = "Emirinstance2"
    Owner = "Emir"
  }
}