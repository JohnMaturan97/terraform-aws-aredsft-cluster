variable "database_name" {
  type        = string
  description = "Database name within the Redshift cluster."
}

variable "master_username" {
  type        = string
  description = "Username for the Redshift cluster admin."
}

variable "master_password" {
  type        = string
  description = "Password for the Redshift cluster admin."
}

variable "node_type" {
  type        = string
  description = "Node type for the Redshift cluster nodes."
}

variable "number_of_nodes" {
  type        = number
  description = "Number of nodes in the Redshift cluster."
}

variable "subnet_group_name" {
  type        = string
  description = "Name of the subnet group for the Redshift cluster."
}

variable "cluster_tags" {
  type        = map(string)
  description = "Tags for the Redshift cluster."
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs for the Redshift cluster."
}

variable "cluster_identifier" {
  type        = string
  description = "Base identifier for the Redshift cluster."
}
