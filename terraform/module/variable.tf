variable "Name" {
  description =   "This is terrafrom resoruce name"
  type        =   string
  default     =   ""
}
variable "microserviceName"{
    description= "this is app name"
    type= string
    default =""
}
variable "secretName" {
  description =   "This is secret file name"
  type        =   string
  default     =   ""
}
variable "configName" {
  description =   "This is config file name"
  type        =   string
  default     =   ""
}
variable "serviceName" {
  description =   "This is microservice name"
  type        =   string
  default     =   ""
}
variable "deploymentName" {
  description =   "This is deployment file name"
  type        =   string
  default     =   ""
}
variable "containerName" {
  description =   "This is container name"
  type        =   string
  default     =   ""
}
variable "app" {
  description =   "This is app name"
  type        =   string
  default     =   ""
}
variable "ingressHost" {
  description =   "This is the url from which application can be accessed"
  type        =   string
}

variable "url" {
  description =   "This is database url file name"
  type        =   string
  default     =   ""
}
variable "microserviceApp" {
  description =   "This is microservice name"
  type        =   string
  default     =   ""
}
variable "volumeClaimName" {
  description =   "This is volume name"
  type        =   string
  default     =   ""
}
variable "volumeStorage" {
  description =   "storage for database"
  type        =   string
  default     =   ""
}
variable "volumeName" {
  description =   "This is storage name"
  type        =   string
  default     =   ""
}
variable "volumePath" {
  description =   "This is storage path"
  type        =   string
  default     =   ""
}

variable "ingressName" {
  description =   "This is ingress file name"
  type        =   string
}
variable "appSecretName"{
    description = " microservice secret"
    type = string
    default = ""
}
