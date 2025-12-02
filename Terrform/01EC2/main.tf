resource "aws_instance" "demo_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Demo-EC2"
  }
}

resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket = var.aws_s3_bucket
  
}