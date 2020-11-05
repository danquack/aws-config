resource "aws_config_config_rule" "root_account_mfa_enabled" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "root_account_mfa_enabled"

  source {
    owner             = "AWS"
    source_identifier = "ROOT_ACCOUNT_MFA_ENABLED"
  }
}

resource "aws_config_config_rule" "access_keys_rotated" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "access_keys_rotated"

  source {
    owner             = "AWS"
    source_identifier = "ACCESS_KEYS_ROTATED"
  }
  input_parameters = "{\"maxAccessKeyAge\": \"90\"}"
}