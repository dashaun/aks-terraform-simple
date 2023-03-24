resource "random_password" "postgres_server_admin_password" {
  length           = 32
  special          = true
}