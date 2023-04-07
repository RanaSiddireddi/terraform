resource "aws_instance" "my-ec2" {
  ami                     = data.aws_ami.lab-image.image_id
  instance_type           = "t2.micro"
}

