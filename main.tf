resource "google_gemini_data_sharing_with_google_setting" "gemini_data_sharing_with_google_settings" {
  for_each = var.gemini_data_sharing_with_google_settings

  data_sharing_with_google_setting_id = each.value.data_sharing_with_google_setting_id
  deletion_policy                     = each.value.deletion_policy
  enable_data_sharing                 = each.value.enable_data_sharing
  enable_preview_data_sharing         = each.value.enable_preview_data_sharing
  labels                              = each.value.labels
  location                            = each.value.location
  project                             = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

