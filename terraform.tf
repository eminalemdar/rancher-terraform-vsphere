terraform {
    required_version = ">= 0.13, < 0.15"

    required_providers {
    rancher2 = {
      source  = "rancher/rancher2"
      version = "1.15.1"
    }
  }
}

provider "rancher2" {
  api_url    = "api_url_of_rancher_server"
  access_key = var.rancher2_access_key
  secret_key = var.rancher2_secret_key
}
