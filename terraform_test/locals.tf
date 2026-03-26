terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

resource "null_resource" "local_exec_test" {
  provisioner "local-exec" {
    interpreter = ["bash", "-c"]
    command     = "echo 'Local terraform run' && ping -c 4 google.com"
  }
}
