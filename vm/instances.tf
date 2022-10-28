resource "google_compute_instance" "default" {
  count        = var.instance_count
  name         = element(var.vm_names, count.index)
  machine_type = var.machine_type
  zone         = var.zone
  
  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "testregister"
  }
}
