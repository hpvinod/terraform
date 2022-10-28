variable "machine_type" {
  type = list
  default = ["e2-medium", "e2-micro"]
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
