resource "rancher2_cloud_credential" "vsphere" {
  name = "VMware vSphere"
  description = "VMware vSphere Cloud Credential"
  vsphere_credential_config {
    vcenter      = var.vcenter
    vcenter_port = var.vcenter_port
    username     = var.username
    password     = var.password
  }
}