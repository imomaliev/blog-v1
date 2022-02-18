provider "github" {
  token = var.token
}

# https://registry.terraform.io/providers/integrations/github/4.19.2/docs/resources/repository
resource "github_repository" "project" {
  name                   = var.project_name
  description            = var.project_description
  homepage_url           = var.project_url
  visibility             = "public"
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  is_template            = false
  delete_branch_on_merge = true
  license_template       = var.license
  auto_init              = true
  topics                 = var.topics
  vulnerability_alerts   = true
  # TODO: add a way to setup https://docs.github.com/en/rest/reference/repos#enable-automated-security-fixes

  # https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository#github-pages-configuration
  pages {
    source {
      branch = "gh-pages"
      path   = "/"
    }
  }

  # https://www.terraform.io/language/meta-arguments/lifecycle
  lifecycle {
    prevent_destroy = true
  }
}

# https://registry.terraform.io/providers/integrations/github/4.19.2/docs/resources/branch_protection
resource "github_branch_protection" "main" {
  repository_id          = github_repository.project.node_id
  pattern                = "main"
  enforce_admins         = true
  require_signed_commits = true
  allows_force_pushes    = false
  allows_deletions       = false
}
