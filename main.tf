resource "aws_instance" "web" {
  ami                  = data.aws_ami.ubuntu.id
  instance_type        = "t3.micro"
  iam_instance_profile = "EC2InstanceRole"

  tags = {
    Name = var.instance_name
  }
}
