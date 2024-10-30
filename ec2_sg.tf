resource "aws_security_group" "ec2_sg" {
  name        = "public_ec2_sg"
  description = "Allow HTTP and SSH inbound traffic for public EC2"
  vpc_id      = aws_vpc.emirvpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "public_ec2_sg"
    Owner = "Emir"
  }
}