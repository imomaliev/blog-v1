variable "github_token" {
  description = "Github token"
  type        = string
}

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

variable "project_license" {
  description = "Project license"
  type        = string
  default     = "MIT"
}

variable "project_topics" {
  description = "Project topics"
  type        = list(string)
  default     = []
}
