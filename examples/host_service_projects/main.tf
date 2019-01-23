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

locals {
  credentials_file_path = "${var.credentials_path}"
}

/******************************************
  Provider configuration
 *****************************************/
provider "google" {
  credentials = "${file(local.credentials_file_path)}"
  version     = "~> 1.19"
}

provider "google-beta" {
  credentials = "${file(local.credentials_file_path)}"
  version     = "~> 1.19"
}

# Create a host project and the shared VPC networks
module "host-project" {
  source            = "../../modules/core_project_factory"
  random_project_id = "false"
  name              = "${var.host_project_name}"
  org_id            = "${var.organization_id}"
  folder_id         = "${var.folder_id}"
  billing_account   = "${var.billing_account}"
  group_email       = "${var.group_email}"
  credentials_path  = "${local.credentials_file_path}"
  activate_apis     = ["compute.googleapis.com", "iam.googleapis.com", "cloudresourcemanager.googleapis.com"]

  shared_vpc_networks = ["${var.shared_vpc_networks}"]
}

# Create a service project and attach to the host project
module "service-project" {
  source            = "../../modules/core_project_factory"
  random_project_id = "false"
  name              = "${var.service_project_name}"
  org_id            = "${var.organization_id}"
  folder_id         = "${var.folder_id}"
  billing_account   = "${var.billing_account}"
  group_email       = "${var.group_email}"
  credentials_path  = "${local.credentials_file_path}"
  activate_apis     = ["compute.googleapis.com", "iam.googleapis.com", "cloudresourcemanager.googleapis.com"]

  shared_vpc = "${var.host_project_name}"
}


# Create another service project and attach to the host project
module "service-project-2" {
  source            = "../../modules/core_project_factory"
  random_project_id = "true"
  name              = "${var.service_project_name}-2"
  org_id            = "${var.organization_id}"
  folder_id         = "${var.folder_id}"
  billing_account   = "${var.billing_account}"
  group_email       = "${var.group_email}"
  credentials_path  = "${local.credentials_file_path}"
  activate_apis     = ["compute.googleapis.com", "iam.googleapis.com", "cloudresourcemanager.googleapis.com"]

  shared_vpc = "${var.host_project_name}"
}

