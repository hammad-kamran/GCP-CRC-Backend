provider "google" {
  project = "genuine-habitat-439408-a1"
  region  = "us-central1"
}

resource "google_cloudfunctions_function" "visitor_counter" {
  name        = "visitorCounterFunction2"
  runtime     = "python311"
  entry_point = "visitor_counter"
  source_archive_bucket = "hammadresume.store"
  source_archive_object = "cloud-resume-terraform.zip"
  trigger_http = true
}
