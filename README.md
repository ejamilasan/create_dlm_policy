Data Lifecycle Manager Policy
===

# About
Creates data lifecycle policy to manage snapshots in aws.

## Required Variable Configs
* aws_region              // aws regions
* aws_account_alias       // aws account name
* interval                // time interval (ie: 24)
* interval_unit           // time inveral units (ie: "HOURS")
* times                   // times (ie: ["23:45", "12:00"])
* retain_rule_count       // max number of snapshots to keep
* target_tags             // tags that will invoke policy
