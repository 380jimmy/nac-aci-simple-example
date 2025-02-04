terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
    }
  }
}

provider "aci" {
  username = "sa-slabapi@ad.net.fr.ch"
  password = "N0st4hmbE3BZhQKgxo8t"
  url      = "https://slabapic201.ntw.fr.local/"
}

module "aci" {
  source  = "netascode/nac-aci/aci"
  version = "0.9.0"

  yaml_directories = ["data"]

  manage_access_policies    = false
  manage_fabric_policies    = false
  manage_pod_policies       = false
  manage_node_policies      = false
  manage_interface_policies = false
  manage_tenants            = true
}
