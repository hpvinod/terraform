resource "google_compute_subnetwork" "hs-subnet" {
  name          = var.subnet
  ip_cidr_range = "10.2.0.0/16"
  region        = var.region
  network       = google_compute_network.custom-test.id
  secondary_ip_range {
    range_name    = "pod-ip-range"
    ip_cidr_range = "192.168.10.0/24"
  }
  secondary_ip_range {
    range_name    = "service-ip-range"
    ip_cidr_range = "192.168.20.0/24"
  }
}

resource "google_compute_network" "custom-test" {
  name                    = "test-network"
  auto_create_subnetworks = false
}
