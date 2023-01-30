resource "helm_release" "argocd" {
  name  = "argocd"

  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  namespace        = "argocd"
  version          = "5.17.1"
  create_namespace = true
  wait             = true
  lint             = true

  values = [
    file("argocd/flask-application.yaml")
  ]
}