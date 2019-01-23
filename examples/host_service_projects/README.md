# Host and Service Project

This example illustrates how to create host and service projects.

It will do the following:
- Create a host project
- Create a shared VPC
- Create a service project
- Configure service project service account with permissions to use the shared VPC network in the host project

Expected variables:
- `organization_id`
- `billing_account`
- `host_project_name`
- `service_project_name`
- `shared_vpc`
- `shared_vpc_networks`

Prerequiste APIs for Service Account project (where stuff runs)

iam.googleapis.com
https://console.developers.google.com/apis/api/iam.googleapis.com/overview?project=653451106688

cloudbilling.googleapis.com
https://console.developers.google.com/apis/api/cloudbilling.googleapis.com/overview?project=653451106688

cloudresourcemanager.googleapis.com
https://console.developers.google.com/apis/api/cloudresourcemanager.googleapis.com/overview?project=653451106688


[^]: (autogen_docs_start)


[^]: (autogen_docs_end)