terraform {
  required_providers {
    foo = {
      source = "opentofu/foo"
      configuration_aliases = [ foo.bar ]
    }
  }
}

resource "foo_resource" "a" {
  providers = foo.bar
}
