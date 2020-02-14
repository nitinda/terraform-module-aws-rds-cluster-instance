resource "aws_rds_cluster_instance" "rds_cluster_instance" {
  count                           = 2
  identifier                      = var.identifier
  cluster_identifier              = var.cluster_identifier
  instance_class                  = var.instance_class
  engine                          = var.engine
  engine_version                  = var.engine_version
  instance_class                  = var.instance_class
  publicly_accessible             = var.publicly_accessible
  db_subnet_group_name            = var.db_subnet_group_name
  db_parameter_group_name         = var.db_parameter_group_name
  apply_immediately               = var.apply_immediately
  monitoring_role_arn             = var.monitoring_role_arn
  monitoring_interval             = var.monitoring_interval
  promotion_tier                  = var.promotion_tier
  auto_minor_version_upgrade      = var.auto_minor_version_upgrade
  performance_insights_enabled    = var.performance_insights_enabled
  performance_insights_kms_key_id = var.performance_insights_kms_key_id
  copy_tags_to_snapshot           = var.copy_tags_to_snapshot
  tags                            = var.tags
}

