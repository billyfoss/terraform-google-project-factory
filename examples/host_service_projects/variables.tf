/**
 * Copyright 2018 Google LLC
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

variable "billing_account" {
  description = "The ID of the billing account to associate this project with"
  default     = ""
}

variable "organization_id" {
  description = "The organization id for the associated services"
}

variable "folder_id" {
  description = "The folder id for the associated services"
}

variable "group_email" {
  description = "The email for the group managing this project"
}

variable "credentials_path" {
  description = "Path to a Service Account credentials file with permissions documented in the readme"
}

variable "host_project_name" {
  description = "Name for the host project"
}

variable "service_project_name" {
  description = "Name for the service project to create"
}

variable "shared_vpc" {
  description = "The ID of the host project which hosts the shared VPC"
  default     = ""
}

variable "shared_vpc_networks" {
  description = "List of shared VPC networks to create"
  type        = "list"
  default     = []
}
