class profile::web {
  include apache
  include mysql::server

  $vhosts = hiera('apache::vhosts', {})
  create_resources('apache::vhost', $vhosts)
}
