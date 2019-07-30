resource "aws_api_gateway_method_settings" "setting" {
  rest_api_id = "${var.rest_api_id}"
  stage_name  = "${var.stage_name}"
  method_path = "${var.method_path}"

  settings    {
    logging_level                              = "${var.logging_level}"
    data_trace_enabled                         = "${var.data_trace_enabled}"
    metrics_enabled                            = "${var.metrics_enabled}" 
    throttling_burst_limit                     = "${var.throttling_burst_limit}"
    throttling_rate_limit                      = "${var.throttling_rate_limit}"
    caching_enabled                            = "${var.caching_enabled}"
    cache_ttl_in_seconds                       = "${var.cache_ttl_in_seconds}"
    cache_data_encrypted                       = "${var.cache_data_encrypted}"
    require_authorization_for_cache_control    = "${var.require_authorization_for_cache_control}"
    unauthorized_cache_control_header_strategy = "${var.unauthorized_cache_control_header_strategy}"
  }
}
