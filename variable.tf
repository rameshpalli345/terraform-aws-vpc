variable "cidr_block" {
  default = {}
}
variable "project_name" {
      type = string
}
variable "environment" {
      type = string
}
variable "enable_dns_hostnames" {

      default = true
}

# Optional

variable "common_tags" {

  default = {}
}

variable "vpc_tags" {
  default = {} 
}

variable "igw_tags" {
  default = {}

}
variable "public_subnet_cidrs" {
        type = list
        validation {
          condition = length(var.public_subnet_cidrs) == 2
          error_message = "Please provide 2 valid public subnet CIDR"
        }
}
variable "public_subnet_tags" {
  
   default = {}
}

variable "private_subnet_cidrs" {
        type = list
        validation {
          condition = length(var.private_subnet_cidrs) == 2
          error_message = "Please provide 2 valid private subnet CIDR"
        }
}
variable "private_subnet_tags" {
  
   default = {}
}

variable "database_subnet_cidrs" {
        type = list
        validation {
          condition = length(var.database_subnet_cidrs) == 2
          error_message = "Please provide 2 valid database subnet CIDR"
        }
}
variable "database_subnet_tags" {
  
   default = {}
}
variable "db_subnet_group_tags" {
   default = {}
}

variable "nat_gateway_tags" {
   default = {}
}
variable "aws_public_route_table" {
    default = {}
}
variable "aws_private_route_table" {
    default = {}
}
variable "aws_database_route_table" {
    default = {}
}
variable "is_peering_required" {
  type = bool
  default = false
}
variable "vpc_peering_tags" {
  default = {}
}

