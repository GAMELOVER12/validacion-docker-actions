// docker-bake.hcl
group "default" {
  targets = ["app-dev", "app-prod"]
}

target "app-base" {
  dockerfile = "Dockerfile"
  contexts = {
    src = "./src"
  }
}

target "app-dev" {
  inherits = ["app-base"]
  tags = ["myapp:dev"]
  args = {
    ENVIRONMENT = "development"
  }
}

target "app-prod" {
  inherits = ["app-base"]
  tags = ["myapp:prod"]
  args = {
    ENVIRONMENT = "production"
  }
}
