
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
    script = "apache_script.sh"
    }
    provisioner "local-exec" {
        command = "echo ${self.public_ip} ${self.private_ip} >public_ip.txt"
    
    }
}
output "ip-list" {
    value = [aws_instance.myres.public_ip]
}
output "ip-private" {
    value = [aws_instance.myres.private_ip]
}