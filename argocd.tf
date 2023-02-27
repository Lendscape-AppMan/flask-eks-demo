resource "helm_release" "argocd" {
  chart            = "argo-cd"
  name             = "argocd"
  namespace        = "argocd"
  version          = "5.17.1"
  repository       = "https://argoproj.github.io/argo-helm"
  create_namespace = true
  values = [
    file("argocd/application.yaml")
  ]
}
