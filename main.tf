resource "aws_redshift_cluster" "prod_redshift_cluster" {
  cluster_identifier           = var.cluster_identifier
  database_name                = var.database_name
  master_username              = var.master_username
  master_password              = var.master_password
  node_type                    = var.node_type
  number_of_nodes              = var.number_of_nodes
  publicly_accessible          = true
  cluster_parameter_group_name = aws_redshift_parameter_group.prod_parameter_group.name
  cluster_subnet_group_name    = var.subnet_group_name
  vpc_security_group_ids       = var.security_group_ids
  skip_final_snapshot          = true
  tags                         = var.cluster_tags
}

resource "aws_redshift_parameter_group" "prod_parameter_group" {
  name   = "prod-redshift-parameter-group"
  family = "redshift-1.0"

  parameter {
    name  = "enable_user_activity_logging"
    value = "true"
  }

  parameter {
    name  = "max_cursor_result_set_size"
    value = "2000"
  }

  parameter {
    name  = "query_group"
    value = "default"
  }

  parameter {
    name  = "require_ssl"
    value = "false"
  }

  tags = {
    Environment = "production"
  }
}