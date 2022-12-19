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

module "driver"{
    source="../module"
    env = var.env
    serviceName = "driver"
    
}

module "customer" {
    source="../module"
    env = var.env
    serviceName = "customer"
}


