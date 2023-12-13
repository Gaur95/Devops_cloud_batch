provider "aws" {
    access_key = "***************"
    secret_key = "**************"
    region = "ap-south-1"
  
}
resource "aws_instance" "myres" {
    ami = "ami-0a7cf821b91bcccbc"
    instance_type = "t2.micro"
    key_name = "mynewkey"
    tags = {
        "Name" = "myterraforminstance"
    }
    connection {
      type = "ssh"
      user = "ubuntu"
      host = self.public_ip
      private_key = file("/home/akash/Downloads/mynewkey.pem")
    }
    provisioner "file" {
        source = "testfile"
        destination = "/home/ubuntu/testfile"
    }
    provisioner "remote-exec" {
    inline = [ "echo hello dosto >cool.txt" ]
    }
}