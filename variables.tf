variable "cidr_block" {
    default = {}
  
}

variable "vpc_tags" {
    default = {}
}

variable "project_name" {
  
}

variable "enable_dns_hostnames" {
    default = true
  
}

variable "environment" {

  
}

variable "common_tags" {
  default = {}
}

variable "public_subnet_cidrs" {

    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "public_subnet_cidrs given only 2"
    }
  
}


variable "private_subnet_cidrs" {

    validation {
      condition = length(var.private_subnet_cidrs) == 2
      error_message = "private_subnet_cidrs given only 2"
    }
  
}



variable "database_subnet_cidrs" {

    validation {
      condition = length(var.database_subnet_cidrs) == 2
      error_message = "db_subnet_cidrs given only 2"
    }
  
}

variable "is_peering_required" {
    default = false
}