resource "aws_iam_user" "dev_user" {
	name = "dev-user"
}

output "iam_user_name" {
	value = aws_iam_user.dev_user.name
}
