
resource "aws_sns_topic" "demo" {
  name = var.sns-qa
  tags = {
    team = var.Team
  }
}

resource "aws_sns_topic_subscription" "email-target" {
  topic_arn = aws_sns_topic.demo.arn
  protocol  = var.protocol_type
  endpoint  = var.end_point

}