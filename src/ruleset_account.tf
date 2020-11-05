resource "aws_config_config_rule" "cloud_trail_enabled" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "cloud_trail_enabled"

  source {
    owner             = "AWS"
    source_identifier = "CLOUD_TRAIL_ENABLED"
  }
}