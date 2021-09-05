resource "aws_instance" "server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id, aws_security_group.allow_http.id]

  key_name = aws_key_pair.deployer.id

  tags = {
    Name = "app_python"
  }
}
