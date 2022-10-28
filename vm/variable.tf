variable "machine_type" {
  type = string
  default = "e2-medium"
}

variable "zone" {
  type = string
  default = "us-central1-a"
}

variable "image" {
  type = string
  default = "debian-cloud/debian-11"
}

variable "vm_names" {
  type = list
  default = ["test", "dev"]
}

variable "instance_count" {
  default = 2
}
