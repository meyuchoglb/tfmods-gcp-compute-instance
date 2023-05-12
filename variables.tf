# --------------------------------------------------------------------------------
#                                  Variables
# --------------------------------------------------------------------------------

variable "project_id" {
  type        = string
  description = "GCP project ID."
}

variable "instance_name" {
  type        = string  
  description = "Name for the instance."
}

variable "zone" {
  type        = string
  description = "The zone for the instance."    
}

variable "machine_type" {
  type        = string  
  description = "GCE machine type."
  default     = "e2-micro"
}

variable "instance_image" {
  type        = string  
  description = "GCE image for the instance."
  default     = "debian-cloud/debian-11"
}

variable "network" {
  type        = optional(string)
  description = "VPC to connect the instance."
}

variable "subnetwork" {
  type        = optiona(string)  
  description = "Subnetwork for the instance."
}