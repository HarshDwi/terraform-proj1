resource "google_compute_network" "vpc_network" {
  project                 = "harsh-dwivedi-357805"
  name                    = "vpc-network"
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "network2subnet-us" {
  name          = "network2subnet-us"
  provider = "google-beta"
  purpose = "PRIVATE"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
  ip_cidr_range = "10.0.0.0/24"
}
