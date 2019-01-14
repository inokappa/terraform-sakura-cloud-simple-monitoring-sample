resource sakuracloud_simple_monitor "http-monitor" {
  count  = "${ length( var.http_endpoints ) }"
  target = "${ element(var.http_endpoints, count.index) }"

  health_check = {
    protocol   = "https"
    delay_loop = 3600
    path       = "/"
    status     = "200"
  }

  notify_email_enabled = true
  description          = "${ element(var.http_endpoints, count.index) } URL Monitoring."
}

resource "sakuracloud_simple_monitor" "ssl-monitor" {
  count  = "${ length( var.ssl_endpoints ) }"
  target = "${ element(var.ssl_endpoints, count.index) }"

  health_check = {
    protocol = "sslcertificate"
  }

  notify_email_enabled = true
  description          = "${ element(var.ssl_endpoints, count.index) } SSL Certificate Monitoring."
}
