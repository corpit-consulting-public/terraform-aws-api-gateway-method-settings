## Usage

```hcl

module "gw_method_settings_v1" {
  source                                     = "./modules/terraform-aws-api-gateway-method-settings"
  rest_api_id                                = "${module.gw_rest_api.id}"
  stage_name                                 = "${module.gw_stage_v1.name}"
  method_path                                = "${var.method_path}"
    metrics_enabled                            = "${var.metrics_enabled}" 
    logging_level                              = "${var.logging_level}"
    data_trace_enabled                         = "${var.data_trace_enabled}"
    throttling_burst_limit                     = "${var.throttling_burst_limit}"
    throttling_rate_limit                      = "${var.throttling_rate_limit}"
    caching_enabled                            = "${var.caching_enabled}"
    cache_ttl_in_seconds                       = "${var.cache_ttl_in_seconds}"
    cache_data_encrypted                       = "${var.cache_data_encrypted}"
    require_authorization_for_cache_control    = "${var.require_authorization_for_cache_control}"
    unauthorized_cache_control_header_strategy = "${var.unauthorized_cache_control_header_strategy}"
}

module "gw_method_settings_test" {
  source                                     = "./modules/terraform-aws-api-gateway-method-settings"
  rest_api_id                                = "${module.gw_rest_api.id}"
  stage_name                                 = "${module.gw_stage_test.name}"
  method_path                                = "${var.method_path}"
    metrics_enabled                            = "${var.metrics_enabled}" 
    data_trace_enabled                         = "${var.data_trace_enabled}"
    throttling_burst_limit                     = "${var.throttling_burst_limit}"
    throttling_rate_limit                      = "${var.throttling_rate_limit}"
    caching_enabled                            = "${var.caching_enabled}"
    cache_ttl_in_seconds                       = "${var.cache_ttl_in_seconds}"
    cache_data_encrypted                       = "${var.cache_data_encrypted}"
    require_authorization_for_cache_control    = "${var.require_authorization_for_cache_control}"
    unauthorized_cache_control_header_strategy = "${var.unauthorized_cache_control_header_strategy}"
}

```
