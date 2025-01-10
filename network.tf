resource "aws_vpc" "terraform_s21_vpc" {
  cidr_block = var.cidr
  tags = {
    Name = var.name
  }
}
