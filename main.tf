provider "aws" {
    region = var.aws_region
    profile = var.aws_account_alias
}

resource "aws_dlm_lifecycle_policy" "dlm_policy" {
  description        = "dlm lifecycle policy"
  execution_role_arn = aws_iam_role.dlm_lifecycle_role.arn
  state              = "ENABLED"

  policy_details {
    resource_types = ["VOLUME"]

    schedule {
      name = "dlm policy"

      create_rule {
        interval      = var.interval
        interval_unit = var.interval_unit
        times         = var.times
      }

      retain_rule {
        count = var.retain_rule_count
      }

      copy_tags = true
    }

    target_tags = var.target_tags
  }
}
