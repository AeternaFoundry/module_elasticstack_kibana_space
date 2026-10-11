resource "elasticstack_kibana_space" "kibana_spaces" {
  for_each = var.kibana_spaces

  name              = each.value.name
  space_id          = each.value.space_id
  color             = each.value.color
  description       = each.value.description
  disabled_features = each.value.disabled_features
  image_url         = each.value.image_url
  initials          = each.value.initials
  solution          = each.value.solution
  timeouts          = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

