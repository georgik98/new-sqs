provider "aws" {
  alias  = "eu"
  region = "eu-central-1"
}

module "aws_sqs_queue" {
  source = "./terraform-modules/new-sqs"

  queue_name                   = "my-app-queue"
  delay_seconds                = 0
  max_message_size             = 262144
  message_retention_seconds    = 345600
  receive_wait_time_seconds    = 0
  visibility_timeout_seconds   = 30
  max_receive_count            = 5
  dlq_delay_seconds            = 0
  dlq_max_message_size         = 262144
  dlq_message_retention_seconds = 1209600
  dlq_receive_wait_time_seconds = 0
  dlq_visibility_timeout_seconds = 30
}

# output "queue_id" {
#   value = module.aws_sqs_queue.queue_id
# }

# output "queue_arn" {
#   value = module.aws_sqs_queue.queue_arn
# }

# output "dlq_id" {
#   value = module.aws_sqs_queue.dlq_id
# }

# output "dlq_arn" {
#   value = module.aws_sqs_queue.dlq_arn
# }