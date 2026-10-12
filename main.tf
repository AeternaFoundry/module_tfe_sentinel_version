resource "tfe_sentinel_version" "sentinel_versions" {
  for_each = var.sentinel_versions

  version           = each.value.version
  archs             = each.value.archs
  beta              = each.value.beta
  deprecated        = each.value.deprecated
  deprecated_reason = each.value.deprecated_reason
  enabled           = each.value.enabled
  official          = each.value.official
  sha               = each.value.sha
  url               = each.value.url
}

