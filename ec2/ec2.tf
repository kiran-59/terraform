resource "aws_security_group" "allow_ssh_terraform" {
    name         = "allow_ssh"   #allow_ssh is already there in my account
    description  = "Allow port number 22 for SSH access"
    #usally we allow everything in egress
    egress {
        from_port         = 0
        to_port           = 0
        portocol          = "-1"
        cidr_blocks       = ["0.0.0.0/0"]
        ipv6_cidr_blocks  = ["::/0"]
    }


    ingress {
        from_port         = 22
        to_port           = 22
        portocol          = "tcp"
        cidr_blocks       = ["0.0.0.0/0"]  #allow from everyone
        ipv6_cidr_blocks  = ["::/0"]
    }
}