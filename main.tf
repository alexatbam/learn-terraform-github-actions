terraform {
  required_version = ">= 0.12"
  backend "gcs" {
    bucket = "bam-tf-state-prod"
  }
}

provider "google" {
  project = "bam-big-data-dev"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_storage_bucket" "test_gh" {
  name          = "test_gh_demo"
  location = "US"
}