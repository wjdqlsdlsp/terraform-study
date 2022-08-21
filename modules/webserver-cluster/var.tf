variable "server_port" {
  description = "The port hte server will use for HTTP requests"
  type = number
  default = 8080
}

variable "sg_name" {
  description = "sg_name"
  type = string
}

variable "cluster_name" {
  description = "cluster_name"
  type = string
}

variable "subnet_name" {
  description = "subnet_name"
  type = string
}