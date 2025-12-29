resource "cloudflare_dns_record" "n8n" {
  zone_id = var.cloudflare_zone_id
  name    = var.n8n_domain
  content = "ghs.googlehosted.com"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}
