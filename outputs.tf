output "hpc_cache_blob_targets" {
  description = "All hpc_cache_blob_target resources"
  value       = azurerm_hpc_cache_blob_target.hpc_cache_blob_targets
}
output "hpc_cache_blob_targets_access_policy_name" {
  description = "List of access_policy_name values across all hpc_cache_blob_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : v.access_policy_name]
}
output "hpc_cache_blob_targets_cache_name" {
  description = "List of cache_name values across all hpc_cache_blob_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : v.cache_name]
}
output "hpc_cache_blob_targets_name" {
  description = "List of name values across all hpc_cache_blob_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : v.name]
}
output "hpc_cache_blob_targets_namespace_path" {
  description = "List of namespace_path values across all hpc_cache_blob_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : v.namespace_path]
}
output "hpc_cache_blob_targets_resource_group_name" {
  description = "List of resource_group_name values across all hpc_cache_blob_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : v.resource_group_name]
}
output "hpc_cache_blob_targets_storage_container_id" {
  description = "List of storage_container_id values across all hpc_cache_blob_targets"
  value       = [for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : v.storage_container_id]
}

