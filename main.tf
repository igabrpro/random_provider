terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.3"
    }
  }
}


provider "null" {}


provider "random" {}





resource "random_id" "server" {

  byte_length = 8
}

resource "null_resource" "igabr" {
  
  triggers = {
    build_number = "Object ${random_id.server.id}"
  }

}

