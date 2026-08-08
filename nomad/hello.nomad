job "hello-devops" {

  type = "service"

  datacenters = ["dc1"]

  group "hello" {

    count = 1

    task "hello" {

      driver = "docker"

      config {
        image = "devops-hello"

        command = "sh"

        args = [
          "-c",
          "python hello.py && tail -f /dev/null"
        ]
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
