variable "gemini_data_sharing_with_google_settings" {
  description = <<EOT
Map of gemini_data_sharing_with_google_settings, attributes below
Required:
    - data_sharing_with_google_setting_id
Optional:
    - deletion_policy
    - enable_data_sharing
    - enable_preview_data_sharing
    - labels
    - location
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    data_sharing_with_google_setting_id = string
    deletion_policy                     = optional(string)
    enable_data_sharing                 = optional(bool)
    enable_preview_data_sharing         = optional(bool)
    labels                              = optional(map(string))
    location                            = optional(string)
    project                             = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

