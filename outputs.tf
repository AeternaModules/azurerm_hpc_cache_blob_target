output "hpc_cache_blob_targets_id" {
  description = "Map of id values across all hpc_cache_blob_targets, keyed the same as var.hpc_cache_blob_targets"
  value       = { for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "hpc_cache_blob_targets_access_policy_name" {
  description = "Map of access_policy_name values across all hpc_cache_blob_targets, keyed the same as var.hpc_cache_blob_targets"
  value       = { for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : k => v.access_policy_name if v.access_policy_name != null && length(v.access_policy_name) > 0 }
}
output "hpc_cache_blob_targets_cache_name" {
  description = "Map of cache_name values across all hpc_cache_blob_targets, keyed the same as var.hpc_cache_blob_targets"
  value       = { for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : k => v.cache_name if v.cache_name != null && length(v.cache_name) > 0 }
}
output "hpc_cache_blob_targets_name" {
  description = "Map of name values across all hpc_cache_blob_targets, keyed the same as var.hpc_cache_blob_targets"
  value       = { for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "hpc_cache_blob_targets_namespace_path" {
  description = "Map of namespace_path values across all hpc_cache_blob_targets, keyed the same as var.hpc_cache_blob_targets"
  value       = { for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : k => v.namespace_path if v.namespace_path != null && length(v.namespace_path) > 0 }
}
output "hpc_cache_blob_targets_resource_group_name" {
  description = "Map of resource_group_name values across all hpc_cache_blob_targets, keyed the same as var.hpc_cache_blob_targets"
  value       = { for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "hpc_cache_blob_targets_storage_container_id" {
  description = "Map of storage_container_id values across all hpc_cache_blob_targets, keyed the same as var.hpc_cache_blob_targets"
  value       = { for k, v in azurerm_hpc_cache_blob_target.hpc_cache_blob_targets : k => v.storage_container_id if v.storage_container_id != null && length(v.storage_container_id) > 0 }
}

