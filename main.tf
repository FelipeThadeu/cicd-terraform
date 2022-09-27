terraform {
  cloud {
    organization = "felipet65"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}