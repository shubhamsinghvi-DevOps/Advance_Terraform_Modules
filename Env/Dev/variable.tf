
variable "subscription_id" {
  type = string
}

variable "target" {
  description = "Deployment target like dev/test/prod"
  type        = string
}

variable "tags" {
  type    = map(string)
  default = {}
}


variable "module_rg" {}