variable "tf_state_bucket" {
  description = "name of s3 bucket for storing TF state"
  default = "devops-automation-bkt"
}

variable "tf_state_lock_table" {
  description = "name of the DynomoDB table for TF state locking"
  default = "devops-automatio-dynomodb-table"
}

variable "Project" {
  description = "Project name for tagging resources"
  default = "recepi-app-api"
}

variable "contact" {
  description = "contact name fr tagging"
  default = "sandeepdoddamani7@gmail.com"
}

