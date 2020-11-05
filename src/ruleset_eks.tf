resource "aws_config_config_rule" "eks_secrets_encrypted" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "eks_secrets_encrypted"
  source {
    owner             = "AWS"
    source_identifier = "EKS_SECRETS_ENCRYPTED"
  }
}