# Set up Logstash in EC2 instance (Terraform + Ansible)


This is a simple project to set up logstash which is logging collector mainly used in ELK stack (ElasticSearch, Logstash and Kibana)

### Prerequisites

* Terraform to be installed
* Ansible to be installed
* Aws account with Aws config is set up in the terminal or update Access key and secret key in `terraform-ec2/variables.tf`
* Aws key pair to be preconfigured and update the .pem file name in `terraform-ec2/variables.tf`

### Instructions

#### Terraform EC2

* Clone the repo
* Run `cd terraform-ec2`
* Run `terraform init`
* Run `terraform apply -auto-approve`
* It will create AWS EC2 in `ap-southeast-1b` region
* Public ip of the AWS EC2 instance is configured in `terraform output` section

#### Ansible Logstash

* Now switch to `ansible-logstash` directory
* Update the public ip of the AWS instance in the `inventory` file along with `.pem key` path
* Run `ansible-playbook -i inventory install-logstash.yml`
* With this Logstash service is up & running in the server

