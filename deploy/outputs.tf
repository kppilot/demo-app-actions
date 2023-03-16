output "security_group_id"{
  value = aws_security_group.app.id
}

output "public_subnet_1_id"{
  value = aws_subnet.public_1.id
}

output "public_subnet_2_id"{
  value = aws_subnet.public_2.id
}

output "alb_public_dns"{
  value= aws_lb.this.dns_name
}
