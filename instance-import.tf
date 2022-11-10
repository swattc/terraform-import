# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "terraform-user"
}

resource "aws_instance" "teraform_import" {
    ami                                  = "ami-09d3b3274b6c5d4aa"
    availability_zone                    = "us-east-1a"
    instance_type                        = "t2.micro"
    key_name                             = "bastion-kp"
    subnet_id                            = "subnet-06df3c4d1c0e9dc50"
    tags                                 = {
        "Name" = "terraform-import"
    }
    tags_all                             = {
        "Name" = "terraform-import"
    }
    tenancy                              = "default"

    root_block_device {
        delete_on_termination = true
        iops                  = 100
        throughput            = 0
        volume_size           = 8
        volume_type           = "gp2"
    }
}