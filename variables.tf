variable "region" {
  type    = "string"
  default = "europe-west1"
}

variable "db_instance_tier" {
  type    = "string"
  default = "db-f1-micro"
}

variable "vof_host" {
  type    = "string"
  default = "105.21.32.62"
}

variable "project_id" {
  type    = "string"
  default = "vof-testbed-2"
}

variable "db_username" {
  type    = "string"
  default = "scotty"
}

variable "db_password" {
  type    = "string"
  default = "scotty"
}

variable "credential_file" {
  type    = "string"
  default = "cred.json"
}
