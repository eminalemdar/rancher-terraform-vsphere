resource "rancher2_cluster" "cluster01" {
  name = "cluster01"
  description = "Rancher VMware vSphere Cluster"
  rke_config {
    network {
      plugin = "calico"
      mtu    = "1480"
    }
    kubernetes_version = ""
    services {
        kube_api {
            secrets_encryption_config {
                enabled = true
            }
        }
    }
  }
}

resource "rancher2_node_pool" "control-plane1" {
  cluster_id        =  rancher2_cluster.cluster01.id
  name              = "controlplane"
  hostname_prefix   =  "master0-"
  node_template_id  = rancher2_node_template.master.id
  quantity          = 1
  control_plane     = true
  etcd              = true
  worker            = false
}

resource "rancher2_node_pool" "worker1" {
  cluster_id        =  rancher2_cluster.cluster01.id
  name              = "worker"
  hostname_prefix   =  "worker0-"
  node_template_id  = rancher2_node_template.worker.id
  quantity          = 3
  control_plane     = false
  etcd              = false
  worker            = true
}
