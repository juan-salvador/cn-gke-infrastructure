provider "google" {
    project = "rosy-etching-278723"
    region = "us-central1"
}

data "google_project" "project" {
}

module "cluster" {
  source = "github.com/juan-salvador/cn-gke-modules//cluster_kubernetes"
  cluster_name = var.cluster_name
  allowed_cidr = var.allowed_cidr
  identity = "${data.google_project.project.project_id}.svc.id.goog"
}

module "node" {
  source = "github.com/juan-salvador/cn-gke-modules//node_pool_kubernetes"
  cluster_name = module.cluster.cluster_name
  min_count_nodes = var.min_count_nodes
  max_count_nodes = var.max_count_nodes
  auto_repair = var.auto_repair
  auto_upgrade = var.auto_upgrade
}