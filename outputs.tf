output "health_check_id" {
  value       = aws_route53_health_check.this.id
  description = "The id of the health check that this module created."
}

output "alarm_arn" {
  value       = aws_cloudwatch_metric_alarm.this.arn
  description = "The arn of the alarm that this module created."
}

output "alarm_id" {
  value       = aws_cloudwatch_metric_alarm.this.id
  description = "The id of the alarm that this module created."
}
