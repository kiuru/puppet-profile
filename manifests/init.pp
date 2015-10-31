class profile {
  include git
  include ntp
  include ssh::client
  include person

  create_resources('user', hiera_hash('users', {}))
}
