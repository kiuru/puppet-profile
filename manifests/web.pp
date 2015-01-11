class profile::web {
  include apache
  include apache::mod::php
  include mysql::server

  $vhosts = hiera('apache::vhosts', {})
  create_resources('apache::vhost', $vhosts)
}
