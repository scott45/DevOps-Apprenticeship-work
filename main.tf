provider "google" {
  credentials = "${file("/Users/scotty/Desktop/vof-terraform-master/cred.json")}"
  project     = "${var.project_id}"
  region      = "${var.region}"
}

terraform {
  backend "gcs" {
    bucket      = "vof-scott"
    path        = "mystate/terraform.tfstate"
    project     = "vof-testbed-2"
    credentials = "/Users/scotty/Desktop/vof-terraform-master/cred.json"
  }
}

data "terraform_remote_state" "vof" {
  backend = "gcs"

  config {
    bucket      = "vof-scott"
    path        = "mystate/terraform.tfstate"
    project     = "vof-testbed-2"
    credentials = "/Users/scotty/Desktop/vof-terraform-master/cred.json"
  }
}
