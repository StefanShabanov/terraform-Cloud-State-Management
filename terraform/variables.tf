variable "AWS_REGION" {
  default = "eu-central-1"
}

variable "AMIS" {
  type = map(any)
  default = {
    eu-central-1 = "ami-04e601abe3e1a910f"
    eu-central-2 = "ami-06397100adf427136" #Dummy value, code will fail if region is used (needs update)
    us-east-1    = "ami-009110a2bf8d7dd0a" #Dummy value, code will fail if region is used (needs update)
  }
}

variable "PRIV_KEY_PATH" {
  default = "vprofilekey"
}

variable "PUB_KEY_PATH" {
  default = "vprofilekey.pub"
  type    = string
}

variable "USERNAME" {
  default = "ubuntu"
}

variable "MY_IP" {
  default = "183.83.39.124/32"
}

variable "rmquser" {
  default = "rabbit"
}

variable "rmqpass" {
  default = "rabbit1rabbit2"
}

variable "dbuser" {
  default = "admin"
}

variable "dbpass" {
  default = "admin123"
}

variable "dbname" {
  default = "accounts"
}

variable "instance_count" {
  default = "1"
}

variable "VPC_NAME" {
  default = "vprofile-VPC"
}

#Creating 6 subnets (3 public and 3 private)
variable "Zone1" {
  default = "eu-central-1a"
}

variable "Zone2" {
  default = "eu-central-1b"
}

variable "Zone3" {
  default = "eu-central-1c"
}

variable "VpcCIDR" {
  default = "172.21.0.0/16"
}

variable "PubSub1CIDR" {
  default = "172.21.1.0/24"
}

variable "PubSub2CIDR" {
  default = "172.21.2.0/24"
}

variable "PubSub3CIDR" {
  default = "172.21.3.0/24"
}

variable "PrivSub1CIRD" {
  default = "172.21.4.0/24"
}

variable "PrivSub2CIRD" {
  default = "172.21.5.0/24"
}

variable "PrivSub3CIRD" {
  default = "172.21.6.0/24"
}