output "queue_id" {
  description = "The URL for the created SQS queue"
  value       = aws_sqs_queue.this.id
}

output "queue_arn" {
  description = "The ARN for the created SQS queue"
  value       = aws_sqs_queue.this.arn
}

output "dlq_id" {
  description = "The URL for the created dead-letter SQS queue"
  value       = aws_sqs_queue.dlq.id
}

output "dlq_arn" {
  description = "The ARN for the created dead-letter SQS queue"
  value       = aws_sqs_queue.dlq.arn
}
