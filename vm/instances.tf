resource "google_compute_instance" "default" {
  count        = var.instance_count
  name         = element(var.vm_names, count.index)
  machine_type = element(var.machine_type, count.index)
  zone         = var.zone
  
  boot_disk {
    initialize_params {
      image = element(var.image, count.index)
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "testregister"
  }
}
