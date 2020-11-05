resource "aws_sns_topic" "config" {
  name = "${var.application}-${var.environment}"
}