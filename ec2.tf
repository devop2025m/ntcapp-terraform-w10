// ec2 servers

resource "aws_instance" "server1" {
  ami                    = "ami-08982f1c5bf93d976"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.private1.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data              = file("setup.sh")
  tags = {
    Name = "Webserver-1"
    Env  = "Dev"
  }

}

resource "aws_instance" "server2" {
  ami                    = "ami-08982f1c5bf93d976"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.private2.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  user_data              = file("setup.sh")
  tags = {
    Name = "Webserver-2"
    Env  = "Dev"
  }

}


