resource "aws_route53_health_check" "this" {
  fqdn               = var.fqdn
  port               = var.health_check_port
  type               = var.health_check_type
  resource_path      = var.health_check_resource_path
  failure_threshold  = var.health_check_failure_threshold
  request_interval   = var.health_check_request_interval
  measure_latency    = var.health_check_measure_latency
  invert_healthcheck = var.health_check_invert_healthcheck
  disabled           = var.health_check_disabled
  enable_sni         = var.health_check_enable_sni
  regions            = length(var.health_check_regions) != 0 ? var.health_check_regions : null

  tags = merge(
    {
      Name = var.health_check_name
    },
    var.tags
  )
}

resource "aws_cloudwatch_metric_alarm" "this" {
  alarm_name          = var.alarm_name
  alarm_description   = var.alarm_description
  comparison_operator = var.alarm_comparison_operator
  evaluation_periods  = var.alarm_evaluation_periods
  metric_name         = "HealthCheckStatus"
  namespace           = "AWS/Route53"
  period              = var.alarm_period
  statistic           = "Minimum"
  threshold           = var.alarm_threshold
  treat_missing_data  = var.alarm_treat_missing_data
  datapoints_to_alarm = var.alarm_datapoints_to_alarm

  dimensions = {
    HealthCheckId = aws_route53_health_check.this.id
  }

  
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = var.alarm_insufficient_data_actions
  ok_actions                = var.alarm_ok_actions
  actions_enabled           = var.alarm_actions_enabled

  tags = var.tags
}