resource "aws_config_config_rule" "http_redirect" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "http_redirect"
  source {
    owner             = "AWS"
    source_identifier = "ALB_HTTP_TO_HTTPS_REDIRECTION_CHECK"
  }
}
resource "aws_config_config_rule" "certificate_check" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "certificate_check"
  source {
    owner             = "AWS"
    source_identifier = "ACM_CERTIFICATE_EXPIRATION_CHECK"
  }

}
