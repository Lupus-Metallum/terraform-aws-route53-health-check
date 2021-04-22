variable "fqdn" {
  type       = string
  description = "The fully qualified domain name of the resource this health check should point to."
}

variable "health_check_name" {
  type       = string
  description = "The name of the resource"
}

variable "health_check_port" {
  type       = number
  default    = 80
  description = "The port of the resource this health check should point to."
}

variable "health_check_type" {
  type       = string
  default    = "HTTPS"
  description = "The type of check this health check should use."
}

variable "health_check_resource_path" {
  type       = string
  default    = "/"
  description = "The path of the resource this health check should point to."
}

variable "health_check_failure_threshold" {
  type       = string
  default    = "5"
  description = "The failure threshold this health check should use."
}

variable "health_check_request_interval" {
  type       = string
  default    = "30"
  description = "The request interval this health check should use."
}

variable "health_check_measure_latency" {
  type       = bool
  default    = false
  description = "Should this enable measure latency for this health check?"
}

variable "health_check_invert_healthcheck" {
  type       = bool
  default    = false
  description = "Should this invert health for this health check?"
}

variable "health_check_disabled" {
  type       = bool
  default    = false
  description = "Should this health check be disabled?"
}

variable "health_check_enable_sni" {
  type       = bool
  default    = true
  description = "Should this health check use SNI? For HTTP, use false; For HTTPS, use true"
}

variable "health_check_regions" {
  type       = list(string)
  default    = []
  description = "The regions that this health check is checked from."
}

variable "alarm_name" {
  type       = string
  description = "The name to use for the cloudwatch alarm."
}

variable "alarm_description" {
  type       = string
  default    = "Alarm for Route53 health check"
  description = "The name to use for the cloudwatch alarm."
}

variable "alarm_comparison_operator" {
  type       = string
  default    = "LessThanThreshold"
  description = "The name to use for the cloudwatch alarm."
}

variable "alarm_evaluation_periods" {
  type       = number
  default    = 1
  description = "The amount of evaluation periods to use for the cloudwatch alarm."
}

variable "alarm_period" {
  type       = number
  default    = 60
  description = "The period to use for the cloudwatch alarm."
}

variable "alarm_threshold" {
  type       = number
  default    = 1
  description = "The threshold to use for the cloudwatch alarm."
}

variable "alarm_treat_missing_data" {
  type       = string
  default    = "missing"
  description = "How should we treat missing data for the cloudwatch alarm?"
}

variable "alarm_datapoints_to_alarm" {
  type       = number
  default    = 1
  description = "The number of datapoints to use for the cloudwatch alarm."
}

variable "alarm_actions" {
  type       = list(string)
  default    = []
  description = "What are the alarm destinations?"
}

variable "alarm_insufficient_data_actions" {
  type       = list(string)
  default    = []
  description = "What are the alarm insufficent data destinations?"
}

variable "alarm_ok_actions" {
  type       = list(string)
  default    = []
  description = "What are the alarm ok destinations?"
}

variable "alarm_actions_enabled" {
  type       = bool
  default    = false
  description = "Should we enable alarm actions?"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Map of tags to apply to resources created by this module"
}
