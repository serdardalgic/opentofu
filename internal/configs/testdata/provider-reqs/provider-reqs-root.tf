terraform {
  required_providers {
    null = "~> 2.0.0"
    random = {
      version = "~> 1.2.0"
    }
    tls = {
      source  = "opentofu/tls"
      version = "~> 3.0"
    }
  }
}

# There is no provider in required_providers called "implied", so this
# implicitly declares a dependency on "opentofu/implied".
resource "implied_foo" "bar" {
}

module "kinder" {
  source = "./child"
}

# There is no provider in required_providers called "terraform", but for
# this name in particular we imply terraform.io/builtin/terraform instead,
# to avoid selecting the now-unmaintained
# registry.opentofu.org/opentofu/terraform.
data "terraform_remote_state" "bar" {
}

# There is no provider in required_providers called "configured", so the version
# constraint should come from this configuration block.
provider "configured" {
  version = "~> 1.4"
}
