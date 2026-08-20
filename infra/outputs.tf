output "vm_1_name" {
  description = "Имя виртуальной машины"
  value       = yandex_compute_instance.vm_1.name
}

output "vm_1_address" {
  description = "Публичный адрес виртуальной машины"
  value       = yandex_compute_instance.vm_1.network_interface[0].nat_ip_address
}

output "bucket_name" {
  description = "Имя бакета"
  value       = yandex_storage_bucket.tf_state_bucket.bucket
}
