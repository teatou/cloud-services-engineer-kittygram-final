resource "yandex_storage_bucket" "tf_state_bucket" {
  bucket        = var.bucket_name
  force_destroy = true
}
