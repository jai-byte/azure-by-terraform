output "kubeconfig" {
  description = "The kubeconfig of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.kube_config_raw
}

output "cluster_id" {
  description = "The ID of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks.id
}
