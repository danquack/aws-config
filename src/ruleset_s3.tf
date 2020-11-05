resource "aws_config_config_rule" "s3_bucket_server_side_encryption" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "s3_bucket_server_side_encryption"
  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED"
  }
}

resource "aws_config_config_rule" "s3_bucket_public_read_prohibited" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "s3_bucket_public_read_prohibited"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_PUBLIC_READ_PROHIBITED"
  }
}
resource "aws_config_config_rule" "s3_bucket_public_write_prohibited" {
  depends_on = [aws_config_configuration_recorder.config]
  name       = "s3_bucket_public_write_prohibited"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_PUBLIC_WRITE_PROHIBITED"
  }
}
