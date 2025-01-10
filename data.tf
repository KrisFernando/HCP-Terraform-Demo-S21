/*
data "vault_generic_secret" "awsvault" {
  path = "default-project/awsvault"
}
*/

data "hcp_vault_secrets_app" "awsvault" {
  app_name = "awsvault"
}
