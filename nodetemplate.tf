resource "rancher2_node_template" "master" {
  name = "master"
  description = "vSphere Node Template for Master"
  cloud_credential_id = rancher2_cloud_credential.vsphere.id
  vsphere_config {
    cpu_count     = ""
    datacenter    = ""
    pool          = ""
    hostsystem    = ""
    datastore     = ""
    disk_size     = ""
    memory_size   = ""
    network       = [""]
    creation_type = "template"
    clone_from    = ""
  }
}

resource "rancher2_node_template" "worker" {
  name = "worker"
  description = "vSphere Node Template for Worker"
  cloud_credential_id = rancher2_cloud_credential.vsphere.id
  vsphere_config {
    cpu_count     =  ""
    datacenter    = ""
    pool          = ""
    hostsystem    = ""
    datastore     = ""
    disk_size     = ""
    memory_size   = ""
    network       = [""]
    creation_type = "template"
    clone_from    = ""
  }
}
