variable "rest_api_id" {
  type        = "string"
  description = "The ID of the REST API"
}

variable "stage_name" {
  type        = "string"
  description = "The name of the Stage"
}

variable "method_path" {
  type        = "string"
  description = "Method path defined as {resource_path}/{http_method} for an individual method override, or */* for overriding all methods in the stage."
}

variable "settings" {
  type        = "map"
  description = "The settings block, see below."
  default     = {}
}

## Settings

variable "metrics_enabled" {
  type        = "string"
  description = " Specifies whether Amazon CloudWatch metrics are enabled for this method. (treu or false)"
  default     = ""
}

variable "logging_level" {
  type        = "string"
  description = "Specifies the logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The available levels are OFF, ERROR, and INFO."
  default     = ""
}

variable "data_trace_enabled" {
  type        = "string"
  description = "Specifies whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs."
  default     = ""
}

variable "throttling_burst_limit" {
  type        = "string"
  description = "Specifies the throttling burst limit."
  default     = "500"
}

variable "throttling_rate_limit" {
  type        = "string"
  description = "Specifies the throttling rate limit."
  default     = "10000.0"
}

variable "caching_enabled" {
  type        = "string"
  description = "pecifies whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached."
  default     = ""
}

variable "cache_ttl_in_seconds" {
  type        = "string"
  description = "Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached."
  default     = "300"
}

variable "cache_data_encrypted" {
  type        = "string"
  description = "Specifies whether the cached responses are encrypted."
  default     = ""
}

variable "require_authorization_for_cache_control" {
  type        = "string"
  description = "Specifies whether authorization is required for a cache invalidation request."
  default     = ""
}

variable "unauthorized_cache_control_header_strategy" {
  type        = "string"
  description = "Specifies how to handle unauthorized requests for cache invalidation. The available values are FAIL_WITH_403, SUCCEED_WITH_RESPONSE_HEADER, SUCCEED_WITHOUT_RESPONSE_HEADER."
  default     = ""
}
