class profile {
  include git
  include ntp
  include ssh::client

  create_resources('user', hiera_hash('users', {}))
}
