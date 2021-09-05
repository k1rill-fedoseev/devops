resource "aws_eip" "app_python_eip" {
  instance = aws_instance.server.id
}