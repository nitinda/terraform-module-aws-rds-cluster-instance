output "arn" {
  value = aws_rds_cluster_instance.rds_cluster_instance.*.arn
}

output "cluster_identifier" {
  value = aws_rds_cluster_instance.rds_cluster_instance.*.cluster_identifier
}

output "identifier" {
  value = aws_rds_cluster_instance.rds_cluster_instance.*.identifier
}

output "writer" {
  value = aws_rds_cluster_instance.rds_cluster_instance.*.writer
}

output "endpoint" {
  value = aws_rds_cluster_instance.rds_cluster_instance.*.endpoint
}

output "engine" {
  value = aws_rds_cluster_instance.rds_cluster_instance.*.engine
}

output "engine_version" {
  value = aws_rds_cluster_instance.rds_cluster_instance.*.engine_version
}

output "database_name" {
  value = aws_rds_cluster_instance.rds_cluster_instance.*.database_name
}