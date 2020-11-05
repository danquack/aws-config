resource "aws_config_config_rule" "rds_snapshot_encrypted" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "rds_snapshot_encrypted"
  source {
    owner             = "AWS"
    source_identifier = "RDS_SNAPSHOT_ENCRYPTED"
  }
}

resource "aws_config_config_rule" "rds_storage_encrypted" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "rds_storage_encrypted"
  source {
    owner             = "AWS"
    source_identifier = "RDS_STORAGE_ENCRYPTED"
  }
}

resource "aws_config_config_rule" "rds_snapshots_public_prohibited" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "rds_snapshots_public_prohibited"
  source {
    owner             = "AWS"
    source_identifier = "RDS_SNAPSHOTS_PUBLIC_PROHIBITED"
  }
}