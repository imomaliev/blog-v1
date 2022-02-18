variable "project_name" {
  description = "Project name"
  type        = string
  default     = "blog"
}

variable "project_description" {
  description = "Project description"
  type        = string
  default     = "Personal blog"
}

variable "project_url" {
  description = "Homepage url"
  type        = string
  default     = "https://imomaliev.github.io/blog"
}

variable "github_token" {
  description = "GitHub token"
  type        = string
}

variable "github_topics" {
  description = "GitHub project topics"
  type        = list(string)
  default     = []
}
