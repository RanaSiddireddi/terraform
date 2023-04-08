#creates ec2 instance


resource "aws_spot_instance_request" "my_spot_server" {
  ami                   = data.aws_ami.lab-image.image_id
  instance_type         = "t2.micro"
  wait_for_fulfillment  = true

  tags = {
    Name = var.COMPONENT
  }

  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
       echo "here will be ansile-pull command similar to - ansible-pull -U git/source -e Component=something env=dev robot.yml"
    ]
  }
}




# resource "aws_instance" "my-ec2" {
#   ami                     = data.aws_ami.lab-image.image_id
#   instance_type           = "t2.micro"
#   vpc_security_group_ids  = [var.sg]

#   connection {
#     type     = "ssh"
#     user     = "centos"
#     password = "DevOps321"
#     host     = self.public_ip
#   }

#   provisioner "remote-exec" {
#     inline = [
#        echo "here will be ansile-pull command similar to - ansible-pull -U git/source -e Component=something env=dev robot.yml"
#     ]
#   }
# }

