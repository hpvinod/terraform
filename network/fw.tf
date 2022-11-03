resource "google_compute_firewall" "default" {
  name    = "http-allow"
  network = google_compute_network.custom-test.id
  
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }

  source_tags = ["web"]
}
