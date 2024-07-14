variable "agent_count" {
  # Número de agentes para el clúster AKS
  default = 2  
}

variable "aks_service_principal_app_id" {
  # ID de la aplicación principal del servicio AKS
  default = ""
}

variable "aks_service_principal_client_secret" {
  # Clave secreta del cliente de la aplicación principal del servicio AKS
  default = ""
}

variable "admin_username" {
  # Nombre de usuario del administrador del clúster AKS
  default = "demo"  
}

variable "acr_name" {
  # Nombre del registro de contenedores de Azure
  default = "demoacrtest"  
}

variable "cluster_name" {
  # Nombre del clúster AKS
  default = "demok8s"  
}

variable "dns_prefix" {
  # Prefijo DNS para el clúster AKS
  default = "demok8s"  
}

variable "resource_group_location" {
  # Ubicación del grupo de recursos de Azure
  default     = "centralus"  
}

variable "resource_group_name" {
  # Nombre del grupo de recursos de Azure
  default     = "demo-terraform-kubernetes-RG"  
}

variable "ssh_public_key" {
  # Ruta de la clave pública SSH para la autenticación
  default = "~/.ssh/id_rsa.pub"  
}
