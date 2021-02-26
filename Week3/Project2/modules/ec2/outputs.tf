# all the output data appears here. this helps in the organization of your files
output "public_ip" {
    value = aws_instance.web.public_ip  # this is the value we are outputting
  
}