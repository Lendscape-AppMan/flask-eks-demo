resource "helm_release" "argocd" {
  chart            = "argo-cd"
  name             = "argocd"
  namespace        = "argocd"
  version          = "5.17.1"
  repository       = "https://argoproj.github.io/argo-helm"
  create_namespace = true
}

resource "helm_release" "argocd-apps" {
  depends_on = [helm_release.argocd]
  chart      = "argocd-apps"
  name       = "argocd-apps"
  namespace  = "argocd"
  version    = "5.17.1"
  repository = "https://argoproj.github.io/argo-helm"
  values = [
    file("argocd/flask-application.yaml")
  ]
}
