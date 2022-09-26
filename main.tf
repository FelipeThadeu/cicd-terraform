terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws" 
    }
    random = {
      source = "hashicorp/random"
    }
  }

  cloud {
    organization = "felipet65"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}