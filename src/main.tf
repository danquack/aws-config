resource "aws_config_configuration_recorder" "config" {
  name     = "default"
  role_arn = aws_iam_role.config.arn

  recording_group {
    all_supported                 = true
    include_global_resource_types = true
  }
}

resource "aws_config_configuration_aggregator" "config" {
  count = var.aggregator_account && length(var.aws_account_ids) > 0 ? 1 : 0
  name  = "default"

  account_aggregation_source {
    account_ids = var.aws_account_ids
    all_regions = true
  }
}

resource "aws_config_aggregate_authorization" "config" {
  count      = var.aggregator_account ? 0 : 1
  account_id = var.aggregator_account_id
  region     = "us-east-1"
}

resource "aws_config_delivery_channel" "config" {
  name           = "default"
  s3_bucket_name = aws_s3_bucket.config.bucket
  sns_topic_arn  = aws_sns_topic.config.arn

  snapshot_delivery_properties {
    delivery_frequency = "Three_Hours"
  }

  depends_on = [aws_config_configuration_recorder.config]
}

resource "aws_config_configuration_recorder_status" "config" {
  name       = aws_config_configuration_recorder.config.name
  is_enabled = true
  depends_on = [aws_config_delivery_channel.config]
}

