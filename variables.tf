variable "cluster_name" {
  description = "The name of kubernetes cluster"
  type        = string
}

variable "allowed_cidr" {
  description = "The IP address range of the Allowed IPs in this cluster. "
  type        = map(string)
}

variable "min_count_nodes" {
    description = "minimum number of nodes in cluster"
    type        = number
    default     = 1
}

variable "max_count_nodes" {
    description = "maximun number of nodes in cluster"
    type        = number
    default     = 1
}

variable "auto_repair" {
    description = "Whether the nodes will be automatically repaired."
    type        = bool
    default     = true
}

variable "auto_upgrade" {
    description = "Whether the nodes will be automatically upgraded."
    type        = bool
    default     = true
}