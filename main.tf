resource "google_compute_instance" "instance" {
  project           = var.project_id
  machine_type      = var.machine_type
  zone              = var.zone
  name              = var.instance_name
  //tags = ["test", "ssh", "mariadb"]

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  metadata = {    
    //startup-script = file("${path.module}/scripts/script_inicio_dev_back.sh")
  }

  network_interface {
    network = var.network
    subnetwork = var.subnetwork
    access_config {}
    }
  }