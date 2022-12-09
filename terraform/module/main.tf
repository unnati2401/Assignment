provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}
resource "kubernetes_namespace" "assignment" {
  metadata {
    annotations = {
      name = "assignment"
    }

    labels = {
      app = "assignment"
    }

    name = "assignment-namespace"

  }
  lifecycle {
    prevent_destroy = true
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "db-mysql"{
  name= var.Name
  chart="C:/Users/UMaheshwari/Devops/springboot/db-mysql"
  namespace="assignment-namespace"
  values = [
          <<-EOT
                
                url: "${var.url}"
            
                app: "${var.app}"

                volumeClaimName: "${var.volumeClaimName}"

                volumeStorage: "${var.volumeStorage}"

                volumeName:  "${var.volumeName}"

                volumePath: "${var.volumePath}"

                secretName: "${var.secretName}"

                configName: "${var.configName}"
    EOT
  ]

}

resource "helm_release" "my-assignment"{
  name=var.microserviceApp
  chart= "C:/Users/UMaheshwari/Devops/springboot/my-assignment"
  namespace = "assignment-namespace"
  values = [
          <<-EOT
                appSecretName: "${var.appSecretName}"

                serviceName: "${var.serviceName}"

                deploymentName: "${var.deploymentName}"

                containerName: "${var.containerName}"

                microserviceApp: "${var.microserviceApp}"

                ingressHost: "${var.ingressHost}"

                ingressName: "${var.ingressName}"
    EOT
  ]

}