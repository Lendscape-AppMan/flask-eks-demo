variable "cluster_version" {
  description = "EKS cluster version"
  type        = string
  default     = "1.24"
}

variable "linux_instance_type" {
  type        = string
  description = "EC2 instance type for Linux Server"
  default     = "t3.small"
}

# variable "ubuntu_ami" {
#   type        = string
#   description = "Ubuntu 22.04 AMI"
#   default     = "ami-0d09654d0a20d3ae2"
# }

variable "environment" {
  type        = string
  description = "Environment name"
  default     = "dev"
}

variable "kubeconfig_path" {
  description = "Path to kubeconfig file."
  type        = string
  default     = "~/.kube/config"
}
