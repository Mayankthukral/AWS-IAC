resource "aws_ebs_volume" "my_volume" {
  availability_zone = var.ebs_volume_availability_zone
  size              = 30
  encrypted         = true
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.my_volume.id
  instance_id = var.ebs_volume_attach_instance_id
}