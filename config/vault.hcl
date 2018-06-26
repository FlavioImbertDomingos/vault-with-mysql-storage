storage "mysql" {
  address = "mysql"
  username = "vault"
  password = "vault"
  database = "vault"
}

listener "tcp" {
  address = "0.0.0.0:8200"
  cluster_address = "127.0.0.1:8201"
  tls_disable = 1
}
