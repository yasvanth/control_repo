node default {
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => present,
    content => "This host is ${fqdn}\n",
  }
}
node /^web/ {
  include role::app_server
  include profile::ssh_server
}

node /^db/ {
  include role::db_server
  include profile::ssh_server
}
