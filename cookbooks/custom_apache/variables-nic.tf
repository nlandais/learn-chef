variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
  default = "~/.ssh/NicAWSKey.pub"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-east-1"
}

variable "my_ip" {
  default = "24.246.169.7/32"
}

variable "aws_vpc" {
  default = "vpc-05fd44020aa804844"
}

variable "aws_subnet" {
  default = "subnet-02167e9b4dbe56e24"
}

variable "ssh_key_id" {
  default = "NicAWSKey"
}

# Ubuntu Precise 18.04 LTS (x64)
variable "aws_amis" {
  default = {
    us-east-1 = "ami-0ac019f4fcb7cb7e6"
    us-west-1 = "ami-063aa838bd7631e0b"
    us-west-2 = "ami-0bbe6b35405ecebdb"
  }
}
