module "customer" {
    source="C:/Users/UMaheshwari/Devops/terraform/module"
    Name="customer"
    microserviceName="customer-assignment"
    secretName= "customer-secret"
    configName= "customer-secret"
    url= "amRiYzpteXNxbDovL2N1c3RvbWVyLW15c3FsOjMzMDYvZW1wbG95ZWVfbWFuYWdlbWVudF9zeXN0ZW0/dXNlU1NMPWZhbHNlJnNlcnZlclRpbWV6b25lPVVUQyZ1c2VMZWdhY3lEYXRldGltZUNvZGU9ZmFsc2U="
    app= "customer-mysql"
    volumeClaimName= "customer-mysql-pv-claim"
    volumeStorage= "8Gi"
    volumeName= "customer-mysql-persistent-storage"
    volumePath= "/var/lib/customer-mysql"
    appSecretName="customer-secret"
    serviceName= "assignment-svc-customer"
    deploymentName= "customer-assignment-deployment"
    containerName= "customer-assignment"
    microserviceApp= "customer-assignment-demo"
    ingressHost= "customer-system-terraform.info"
    ingressName= "customer-ingress-assignment"
    

    
}


module "driver"{
    source="C:/Users/UMaheshwari/Devops/terraform/module"   
    Name="driver"
    microserviceName="driver-assignment"
    secretName= "driver-secret"
    configName= "driver-customer"
    url= "amRiYzpteXNxbDovL2RyaXZlci1teXNxbDozMzA2L2VtcGxveWVlX21hbmFnZW1lbnRfc3lzdGVtP3VzZVNTTD1mYWxzZSZzZXJ2ZXJUaW1lem9uZT1VVEMmdXNlTGVnYWN5RGF0ZXRpbWVDb2RlPWZhbHNl"
    app= "driver-mysql"
    volumeClaimName= "driver-mysql-pv-claim"
    volumeStorage= "5Gi"
    volumeName= "driver-mysql-persistent-storage"
    volumePath= "/var/lib/driver-mysql" 
    appSecretName="driver-secret"
    serviceName= "assignment-svc-driver"
    deploymentName= "driver-assignment-deployment"
    containerName= "driver-assignment"
    microserviceApp= "driver-assignment-demo"
    ingressHost= "driver-system-terraform.info"
    ingressName= "driver-ingress-assignment"
    
}