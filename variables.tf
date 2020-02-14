## RDS Cluster Instance

variable "identifier" {
  description = "The identifier for the RDS instance"
}

variable "cluster_identifier" {
  description = "The identifier of the aws_rds_cluster in which to launch this instance"
}

variable "engine" {
  description = "The name of the database engine to be used for this DB cluster."
}

variable "engine_version" {
  description = "The database engine version"
}

variable "instance_class" {
  description = "The instance class to use."
}

variable "publicly_accessible" {
  description = "Bool to control if instance is publicly accessible."
  type        = bool
  default     = false
}

variable "db_subnet_group_name" {
  description = "A DB subnet group to associate with this DB instances"
  type        = list(string)
}

variable "db_parameter_group_name" {
  description = "The name of the DB parameter group to associate with this instance."
  type        = list(string)
}

variable "apply_immediately" {
  description = "Determines whether or not any DB modifications are applied immediately, or during the maintenance window"
  default     = false
  type        = bool
}

variable "monitoring_role_arn" {
  description = "The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs"
  default     = null
}

variable "monitoring_interval" {
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance"
  default     = 0
  type        = number
}

variable "auto_minor_version_upgrade" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
  type        = bool
  default     = true
}

variable "performance_insights_enabled" {
  description = "Specifies whether Performance Insights is enabled or not"
  default     = false
  type        = bool
}

variable "performance_insights_kms_key_id" {
  description = "The ARN for the KMS key to encrypt Performance Insights data"
  default     = null
}

variable "copy_tags_to_snapshot" {
  description = "Copy all Cluster tags to snapshots"
  type        = bool
  default     = false
}

## Tags
variable "tags" {
  description = "Resources Tags"
  type        = map(string)
}

