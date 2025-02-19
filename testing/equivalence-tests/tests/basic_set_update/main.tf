terraform {
  required_providers {
    tfcoremock = {
      source  = "opentofu/tfcoremock"
      version = "0.1.1"
    }
  }
}

provider "tfcoremock" {}

resource "tfcoremock_set" "set" {
  id = "046952C9-B832-4106-82C0-C217F7C73E18"
  set = [
    "41471135-E14C-4946-BFA4-2626C7E2A94A",
    "D8F7EA80-9E25-4DD7-8D97-797D2080952B",
    "1769B76E-12F0-4214-A864-E843EB23B64E",
  ]
}
