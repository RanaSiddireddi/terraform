data "aws_ami" "lab-image" {
  most_recent      = true
  name_regex       = "b52-ansible-dev-23Feb2023"
  owners           = ["self"]
}
