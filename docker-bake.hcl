group "default" {
  targets = ["build"]
}

target "build" {
  context = "."
  dockerfile = "Dockerfile"
  tags = ["wearygamelov1/mi-app:latest"]
}
