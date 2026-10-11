output "org_maintenance_settings_org_id" {
  description = "Map of org_id values across all org_maintenance_settings, keyed the same as var.org_maintenance_settings except keys with no org_id are omitted"
  value       = { for k, v in mongodbatlas_org_maintenance_settings.org_maintenance_settings : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "org_maintenance_settings_wave_assignment_mode" {
  description = "Map of wave_assignment_mode values across all org_maintenance_settings, keyed the same as var.org_maintenance_settings except keys with no wave_assignment_mode are omitted"
  value       = { for k, v in mongodbatlas_org_maintenance_settings.org_maintenance_settings : k => v.wave_assignment_mode if v.wave_assignment_mode != null && length(v.wave_assignment_mode) > 0 }
}

