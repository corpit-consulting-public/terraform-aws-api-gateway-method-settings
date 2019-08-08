
# terraform-aws-api-gateway-method-settings

Terraform module that creates Api Gateways Method Settings resources in AWS

An API method response encapsulates the output of an API method request that the client will receive. The output data includes an HTTP status code, some headers, and possibly a body.

* Required modules:

 * Module [Api Gateway Rest Api](https://registry.terraform.io/modules/corpit-consulting-public/api-gateway-rest-api/aws/0.1.1)
 * Module [Api Gateway Stage](https://registry.terraform.io/modules/corpit-consulting-public/api-gateway-stage/aws/0.1.2)

* This module only works if used with the required modules
## Usage

```hcl

module "gw_method_settings_v1" {
  source                                     = "./modules/terraform-aws-api-gateway-method-settings"
  rest_api_id                                = "${module.gw_rest_api.id}"
  stage_name                                 = "${module.gw_stage_v1.name}"
  method_path                                = "${var.method_params["method_path"]}"
    metrics_enabled                            = "${var.metrics_enabled}" 
    logging_level                              = "${var.logging_level}"
    data_trace_enabled                         = "${var.data_trace_enabled}"
    throttling_burst_limit                     = "${var.throttling_burst_limit}"
    throttling_rate_limit                      = "${var.throttling_rate_limit"]}"
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

## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cache\_data\_encrypted | Specifies whether the cached responses are encrypted. | string | `""` | no |
| cache\_ttl\_in\_seconds | Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached. | string | `"300"` | no |
| caching\_enabled | pecifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached. | string | `""` | no |
| data\_trace\_enabled | Specifies whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs. | string | `""` | no |
| logging\_level | Specifies the logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The available levels are OFF, ERROR, and INFO. | string | `""` | no |
| method\_path | Method path defined as {resource_path}/{http_method} for an individual method override, or */* for overriding all methods in the stage. | string | n/a | yes |
| metrics\_enabled | Specifies whether Amazon CloudWatch metrics are enabled for this method. (treu or false) | string | `""` | no |
| require\_authorization\_for\_cache\_control | Specifies whether authorization is required for a cache invalidation request. | string | `""` | no |
| rest\_api\_id | The ID of the REST API | string | n/a | yes |
| settings | The settings block, see below. | map | `<map>` | no |
| stage\_name | The name of the Stage | string | n/a | yes |
| throttling\_burst\_limit | Specifies the throttling burst limit. | string | `"500"` | no |
| throttling\_rate\_limit | Specifies the throttling rate limit. | string | `"10000.0"` | no |
| unauthorized\_cache\_control\_header\_strategy | Specifies how to handle unauthorized requests for cache invalidation. The available values are FAIL_WITH_403, SUCCEED_WITH_RESPONSE_HEADER, SUCCEED_WITHOUT_RESPONSE_HEADER. | string | `""` | no |

