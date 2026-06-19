group "default" {
  targets = ["build"]
}

target "build" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["thelastwolfstanding/mi-app:latest"]
}
