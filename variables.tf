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
}

variable "instance_image" {
  type        = string  
  description = "GCE image for the instance."
}

variable "interfaces" {
  type = object({
    network                = string
    subnetwork             = string    
  })
  description = "Parameters to create networks interfaces"
}