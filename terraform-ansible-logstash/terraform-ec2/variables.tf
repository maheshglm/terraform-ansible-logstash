variable "access_key" {
  description = "AWS config access key"
  type        = string
  default     = "<ACCESS KEY>"
}

variable "secret_key" {
  description = "AWS config secret key"
  type        = string
  default     = "SECRET KEY"
}

# Variables for general information
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "instance_ami" {
  description = "ID of the AMI used"
  type        = string
  default     = "ami-02f26adf094f51167"
}

variable "instance_type" {
  description = "Type of the instance"
  type        = string
  default     = "t2.micro"
}

variable "aws_region_az" {
  description = "AWS region availability zone"
  type        = string
  default     = "b"
}

variable "owner" {
  description = "Configuration owner"
  type        = string
  default     = "bigpay"
}

# Variables for VPC

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_dns_support" {
  description = "Enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "vpc_dns_hostnames" {
  description = "Enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

# Variables for Subnet

variable "sbn_public_ip" {
  description = "Assign public IP to the instance launched into the subnet"
  type        = bool
  default     = true
}

variable "sbn_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "key_pair" {
  description = "SSH Key pair used to connect"
  type        = string
  default     = "<KEY_PAIR>"
}


# Variables for Security Group

variable "sg_ingress_proto" {
  description = "Protocol used for the ingress rule"
  type        = string
  default     = "tcp"
}

variable "sg_ingress_ssh" {
  description = "Port used for the ingress rule"
  type        = string
  default     = "22"
}

variable "sg_egress_proto" {
  description = "Protocol used for the egress rule"
  type        = string
  default     = "-1"
}

variable "sg_egress_all" {
  description = "Port used for the egress rule"
  type        = string
  default     = "0"
}

variable "sg_egress_cidr_block" {
  description = "CIDR block for the egress rule"
  type        = string
  default     = "0.0.0.0/0"
}

# Variables for Route Table
 
variable "rt_cidr_block" {
  description = "CIDR block for the route table"
  type        = string
  default     = "0.0.0.0/0"
}
 


