# resource "kubernetes_deployment" "halo" {
#   metadata {
#     name = "halo-${var.environment}"
#     labels = {
#       environment = var.environment
#     }
#   }

#   spec {
#     replicas = 3
#     selector {
#       match_labels = {
#         app = "halo"
#       }
#     }
#     template {
#       metadata {
#         labels = {
#           app = "halo"
#         }
#       }
#       #   spec {
#       #     container {
#       #       name  = "halo"
#       #       image = "halo:latest"
#       #     }
#       #   }
#       spec {
#         container {
#           image = "nginx:1.21.6"
#           name  = "example"

#           resources {
#             limits = {
#               cpu    = "0.5"
#               memory = "512Mi"
#             }
#             requests = {
#               cpu    = "250m"
#               memory = "50Mi"
#             }
#           }

#           liveness_probe {
#             http_get {
#               path = "/"
#               port = 80

#               http_header {
#                 name  = "X-Custom-Header"
#                 value = "Awesome"
#               }
#             }

#             initial_delay_seconds = 3
#             period_seconds        = 3
#           }
#         }
#       }
#     }
#   }
# }

# resource "kubernetes_deployment" "aura" {
#   metadata {
#     name = "aura-${var.environment}"
#     labels = {
#       environment = var.environment
#     }
#   }

#   spec {
#     replicas = 3
#     selector {
#       match_labels = {
#         app = "aura"
#       }
#     }
#     template {
#       metadata {
#         labels = {
#           app = "aura"
#         }
#       }
#       #   spec {
#       #     container {
#       #       name  = "aura"
#       #       image = "aura:latest"
#       #     }
#       #   }
#       spec {
#         container {
#           image = "nginx:1.21.6"
#           name  = "example"

#           resources {
#             limits = {
#               cpu    = "0.5"
#               memory = "512Mi"
#             }
#             requests = {
#               cpu    = "250m"
#               memory = "50Mi"
#             }
#           }

#           liveness_probe {
#             http_get {
#               path = "/"
#               port = 80

#               http_header {
#                 name  = "X-Custom-Header"
#                 value = "Awesome"
#               }
#             }

#             initial_delay_seconds = 3
#             period_seconds        = 3
#           }
#         }
#       }
#     }
#   }
# }
