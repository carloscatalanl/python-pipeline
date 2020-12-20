# Public
resource "aws_instance" "ec2-public" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id = var.public_subnet.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  associate_public_ip_address = true
  key_name = aws_key_pair.key_access.key_name

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "EC2 PUB - Python"
  }

}