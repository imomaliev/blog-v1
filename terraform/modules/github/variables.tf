variable "project_name" {
  description = "Project name"
  type        = string
}

variable "project_description" {
  description = "Project description"
  type        = string
}

variable "project_url" {
  description = "Homepage url"
  type        = string
}

variable "token" {
  description = "GitHub token"
  type        = string
}

variable "license" {
  description = "GitHub license"
  type        = string
  default     = "MIT"
}

variable "topics" {
  description = "GitHub topics"
  type        = list(string)
  default     = []
}
