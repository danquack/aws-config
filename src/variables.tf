variable "application" {
  default     = "config"
  description = "the name of the application"
}
variable "environment" {
  default     = "sandbox"
  description = "the environment to deploy into"
}
variable "aws_account_ids" {
  default     = []
  description = "the accounts to aggregate"
}
variable "aggregator_account" {
  default     = false
  description = "toggle if the aggregate account"
}
variable "aggregator_account_id" {
  description = "The account id to aggregate to"
}
data "aws_caller_identity" "current" {}