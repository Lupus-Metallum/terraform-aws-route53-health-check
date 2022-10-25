# terraform-module-template

This Terraform module will create a Route53 Health Check and associated CloudWatch metric alarm.
<!-- BEGIN_TF_DOCS -->

<img src="https://raw.githubusercontent.com/Lupus-Metallum/brand/master/images/logo.jpg" width="400"/>



## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_route53_health_check.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_health_check) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alarm_name"></a> [alarm\_name](#input\_alarm\_name) | The name to use for the cloudwatch alarm. | `string` | n/a | yes |
| <a name="input_fqdn"></a> [fqdn](#input\_fqdn) | The fully qualified domain name of the resource this health check should point to. | `string` | n/a | yes |
| <a name="input_health_check_name"></a> [health\_check\_name](#input\_health\_check\_name) | The name of the resource | `string` | n/a | yes |
| <a name="input_alarm_actions"></a> [alarm\_actions](#input\_alarm\_actions) | What are the alarm destinations? | `list(string)` | `[]` | no |
| <a name="input_alarm_actions_enabled"></a> [alarm\_actions\_enabled](#input\_alarm\_actions\_enabled) | Should we enable alarm actions? | `bool` | `false` | no |
| <a name="input_alarm_comparison_operator"></a> [alarm\_comparison\_operator](#input\_alarm\_comparison\_operator) | The name to use for the cloudwatch alarm. | `string` | `"LessThanThreshold"` | no |
| <a name="input_alarm_datapoints_to_alarm"></a> [alarm\_datapoints\_to\_alarm](#input\_alarm\_datapoints\_to\_alarm) | The number of datapoints to use for the cloudwatch alarm. | `number` | `1` | no |
| <a name="input_alarm_description"></a> [alarm\_description](#input\_alarm\_description) | The name to use for the cloudwatch alarm. | `string` | `"Alarm for Route53 health check"` | no |
| <a name="input_alarm_evaluation_periods"></a> [alarm\_evaluation\_periods](#input\_alarm\_evaluation\_periods) | The amount of evaluation periods to use for the cloudwatch alarm. | `number` | `1` | no |
| <a name="input_alarm_insufficient_data_actions"></a> [alarm\_insufficient\_data\_actions](#input\_alarm\_insufficient\_data\_actions) | What are the alarm insufficent data destinations? | `list(string)` | `[]` | no |
| <a name="input_alarm_ok_actions"></a> [alarm\_ok\_actions](#input\_alarm\_ok\_actions) | What are the alarm ok destinations? | `list(string)` | `[]` | no |
| <a name="input_alarm_period"></a> [alarm\_period](#input\_alarm\_period) | The period to use for the cloudwatch alarm. | `number` | `60` | no |
| <a name="input_alarm_threshold"></a> [alarm\_threshold](#input\_alarm\_threshold) | The threshold to use for the cloudwatch alarm. | `number` | `1` | no |
| <a name="input_alarm_treat_missing_data"></a> [alarm\_treat\_missing\_data](#input\_alarm\_treat\_missing\_data) | How should we treat missing data for the cloudwatch alarm? | `string` | `"missing"` | no |
| <a name="input_health_check_disabled"></a> [health\_check\_disabled](#input\_health\_check\_disabled) | Should this health check be disabled? | `bool` | `false` | no |
| <a name="input_health_check_enable_sni"></a> [health\_check\_enable\_sni](#input\_health\_check\_enable\_sni) | Should this health check use SNI? For HTTP, use false; For HTTPS, use true | `bool` | `true` | no |
| <a name="input_health_check_failure_threshold"></a> [health\_check\_failure\_threshold](#input\_health\_check\_failure\_threshold) | The failure threshold this health check should use. | `string` | `"5"` | no |
| <a name="input_health_check_invert_healthcheck"></a> [health\_check\_invert\_healthcheck](#input\_health\_check\_invert\_healthcheck) | Should this invert health for this health check? | `bool` | `false` | no |
| <a name="input_health_check_measure_latency"></a> [health\_check\_measure\_latency](#input\_health\_check\_measure\_latency) | Should this enable measure latency for this health check? | `bool` | `false` | no |
| <a name="input_health_check_port"></a> [health\_check\_port](#input\_health\_check\_port) | The port of the resource this health check should point to. | `number` | `80` | no |
| <a name="input_health_check_regions"></a> [health\_check\_regions](#input\_health\_check\_regions) | The regions that this health check is checked from. | `list(string)` | `[]` | no |
| <a name="input_health_check_request_interval"></a> [health\_check\_request\_interval](#input\_health\_check\_request\_interval) | The request interval this health check should use. | `string` | `"30"` | no |
| <a name="input_health_check_resource_path"></a> [health\_check\_resource\_path](#input\_health\_check\_resource\_path) | The path of the resource this health check should point to. | `string` | `"/"` | no |
| <a name="input_health_check_type"></a> [health\_check\_type](#input\_health\_check\_type) | The type of check this health check should use. | `string` | `"HTTPS"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to apply to resources created by this module | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alarm_arn"></a> [alarm\_arn](#output\_alarm\_arn) | The arn of the alarm that this module created. |
| <a name="output_alarm_id"></a> [alarm\_id](#output\_alarm\_id) | The id of the alarm that this module created. |
| <a name="output_health_check_id"></a> [health\_check\_id](#output\_health\_check\_id) | The id of the health check that this module created. |
<!-- END_TF_DOCS -->