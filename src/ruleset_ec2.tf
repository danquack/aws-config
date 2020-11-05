resource "aws_config_config_rule" "encrypted_volumes" {
  name = "ebs_volume_encrypted"
  source {
    owner             = "AWS"
    source_identifier = "ENCRYPTED_VOLUMES"
  }
  depends_on = [aws_config_configuration_recorder.config]
}

resource "aws_config_config_rule" "incoming_ssh_disabled" {
  name = "ssh_disabled"
  source {
    owner             = "AWS"
    source_identifier = "INCOMING_SSH_DISABLED"
  }
  depends_on = [aws_config_configuration_recorder.config]
}


resource "aws_config_config_rule" "ec2_imdsv2" {
  name = "imdsv2_enabled"
  source {
    owner             = "AWS"
    source_identifier = "EC2_IMDSV2_CHECK"
  }
  depends_on = [aws_config_configuration_recorder.config]
}