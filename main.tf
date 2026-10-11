resource "mongodbatlas_org_maintenance_settings" "org_maintenance_settings" {
  for_each = var.org_maintenance_settings

  org_id               = each.value.org_id
  wave_assignment_mode = each.value.wave_assignment_mode
}

