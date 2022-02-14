resource "aws_instance" "public-instance" {
  ami           = "ami-03fa4afc89e4a8a09"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.public-subnet.id

  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  key_name = aws_key_pair.keypair.key_name

  tags = {
    Name = "public-instance"
  }
}

resource "aws_instance" "private-instance" {
  ami           = "ami-03fa4afc89e4a8a09"
  instance_type = "t2.micro"

  subnet_id = aws_subnet.private-subnet.id

  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  key_name = aws_key_pair.keypair.key_name
  
  tags = {
    Name = "private-instance"
  }
}

