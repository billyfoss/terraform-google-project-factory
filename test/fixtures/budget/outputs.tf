/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "project_id" {
  description = "The project ID created"
  value       = module.budget.project_id
}

output "pubsub_project_id" {
  description = "The parent project where PubSub topic is created"
  value       = module.budget.pubsub_project_id
}

output "pubsub_topic" {
  description = "The PubSub topic name created for budget alerts"
  value       = module.budget.pubsub_topic
}

output "main_budget_name" {
  description = "The name of the budget created by the core project factory module"
  value       = module.budget.main_budget_name
}

output "additional_budget_name" {
  description = "The name of the 2nd budget manually created"
  value       = module.budget.additional_budget_name
}

output "budget_amount" {
  description = "The amount to use for the budget"
  value       = module.budget.budget_amount
}

output "budget_alert_spent_percents" {
  description = "The list of percentages of the budget to alert on"
  value       = module.budget.budget_alert_spent_percents
}

output "budget_services" {
  description = "A list of services to be included in the budget"
  value       = module.budget.budget_services
}

output "budget_credit_types_treatment" {
  description = "Specifies how credits should be treated when determining spend for threshold calculations"
  value       = module.budget.budget_credit_types_treatment
}
