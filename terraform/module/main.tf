provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}
# resource "kubernetes_namespace" "assignment" {
#   metadata {
#     annotations = {
#       name = "assignment"
#     }

#     labels = {
#       app = "assignment"
#     }

#     name = "assignment-namespace"

#   }
#   lifecycle {
#     prevent_destroy = true
#   }
# }

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "db-mysql"{
  name= var.serviceName
  chart="../../../Devops/springboot/db-mysql"
  namespace="assignment-namespace"
  values = [
          <<-EOT
                env: "${var.env}"
                serviceName: "${var.serviceName}"
    EOT
  ]
 

}

resource "helm_release" "my-assignment"{
  name= "${var.serviceName}-service"
  chart= "../../../Devops/springboot/my-assignment"
  namespace = "assignment-namespace"
  values = [
          <<-EOT
                env: "${var.env}"
                serviceName: "${var.serviceName}"
    EOT
  ]

}



