class apache_profile::apache {
  class { '::apache':
    default_vhost => true,
  }

 $docroot = "/var/www/${facts['fqdn']}"
  
  ::apache::vhost { $facts['fqdn']:
      #server_name => $facts['fqdn'],
      port        => 80,
      docroot     => $docroot,
      before      => File["${docroot}/index.html"],
}

file { "${docroot}/index.html":
    content => "Test page, this is test",
}
} 

