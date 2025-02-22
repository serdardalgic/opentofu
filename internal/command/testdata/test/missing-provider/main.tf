terraform {
  required_providers {
    test = {
      source = "opentofu/test"
      configuration_aliases = [ test.secondary ]
    }
  }
}

resource "test_resource" "primary" {
  value = "foo"
}

resource "test_resource" "secondary" {
  provider = test.secondary
  value = "bar"
}
