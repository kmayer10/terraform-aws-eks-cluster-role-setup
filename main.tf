resource "aws_iam_role" "aws_iam_role" {
  name = local.role_name
  tags = {
    "Name" = local.role_name
  }
  assume_role_policy = jsonencode({
    "Version": "2012-10-17"
    "Statement": [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid = ""
        Principal = {
          Service = "${local.service_name}.amazonaws.com"
        }
      }
    ]
  })
}
