data "cloudflare_list_items" "list_items_lookup" {
  for_each = var.list_items_lookup

  list_id    = each.value.list_id
  account_id = each.value.account_id
  max_items  = each.value.max_items
  per_page   = each.value.per_page
  search     = each.value.search
}

