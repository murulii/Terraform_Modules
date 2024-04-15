vpc_cidr_block = "192.168.0.0/24"
vpc_tag = "mymachavpc"
ig_tag = "mymachaig"
subnet_list_with_ip = [ "192.168.0.0/25", "192.168.0.128/25"]
# aws_ec2_subnet = aws_subnet.Subnet[1].id
aws_ec2_userdata = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
              sudo chmod +x kops
              sudo mv kops /usr/local/bin/kops
              EOF