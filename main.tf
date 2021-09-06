provider "google" {
#  credentials = "${file("svc.json")}"
#  credentials = "/root/svc.json"
  project     = "moonlit-parsec-321215"
  region      = "us-west1"
}

resource "google_artifact_registry_repository" "my-repo" {
  provider = google-beta
  location = "us-west1"
  project     = "moonlit-parsec-321215"
  repository_id = "my-repo"
  description = "DESCRIPTION"
  format = "DOCKER"
}
