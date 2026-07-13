variable "hpc_cache_blob_targets" {
  description = <<EOT
Map of hpc_cache_blob_targets, attributes below
Required:
    - cache_name
    - name
    - namespace_path
    - resource_group_name
    - storage_container_id
Optional:
    - access_policy_name
EOT

  type = map(object({
    cache_name           = string
    name                 = string
    namespace_path       = string
    resource_group_name  = string
    storage_container_id = string
    access_policy_name   = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.hpc_cache_blob_targets : (
        length(v.cache_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.hpc_cache_blob_targets : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.hpc_cache_blob_targets : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.hpc_cache_blob_targets : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.hpc_cache_blob_targets : (
        v.access_policy_name == null || (length(v.access_policy_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

