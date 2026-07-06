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
    access_policy_name   = optional(string) # Default: "default"
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
        v.access_policy_name == null || (length(v.access_policy_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_hpc_cache_blob_target's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.StorageTargetName] !ok
  # path: name
  #   source:    [from validate.StorageTargetName] !p.MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: namespace_path
  #   source:    validate.CacheNamespacePath: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: storage_container_id
  #   source:    [from commonids.ValidateStorageContainerID] !ok
  # path: storage_container_id
  #   source:    [from commonids.ValidateStorageContainerID] err != nil
}

