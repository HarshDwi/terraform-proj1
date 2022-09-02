terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.33.0"
    }
  }
}

provider "google" {
    
  project     = "harsh-dwivedi-357805"
  region      = "us-central1"
}