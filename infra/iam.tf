resource "yandex_iam_service_account" "kittygram_sa" {
  name        = "kittygram-sa"
  folder_id   = var.folder_id
  description = "Service account for Kittygram infrastructure"
}

resource "yandex_resourcemanager_folder_iam_member" "sa_editor" {
  folder_id = var.folder_id
  role      = "editor"
  member    = "serviceAccount:${yandex_iam_service_account.kittygram_sa.id}"
}

resource "yandex_iam_service_account_static_access_key" "sa_static_key" {
  service_account_id = yandex_iam_service_account.kittygram_sa.id
  description        = "Static access key for Object Storage"
}
