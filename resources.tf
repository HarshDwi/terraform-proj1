resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "{$var.machine_type}"
  zone         = "us-central1-a"

 

  boot_disk {
    initialize_params {
      image = "{$var.image_type}"
    }
  }

  // Local SSD disk
  
  network_interface {
    network = "vpc-network"
     subnetwork = "network2subnet-us"

    access_config {
      // Ephemeral public IP
    }
  }

  

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    
    
    scopes = ["cloud-platform"]
  }
}
