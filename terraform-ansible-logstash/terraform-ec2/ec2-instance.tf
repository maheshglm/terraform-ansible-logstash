resource "aws_instance" "ec2_vm" {
  ami                         = var.instance_ami
  availability_zone           = "${var.aws_region}${var.aws_region_az}"
  instance_type               = var.instance_type
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.subnet.id
  key_name                    = var.key_pair
  tags = {
    "Owner"               = var.owner
    "Name"                = "${var.owner}-instance"
    "KeepInstanceRunning" = "false"
  }
}






