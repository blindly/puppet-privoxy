# Class: privoxy::config
#
#
class privoxy::config {
  file { '/usr/local/bin/privoxy-blocklist.sh':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
    source => 'puppet:///modules/privoxy/privoxy-blocklist.sh';
  }
  ->
  exec { 'privoxy-blocklist.sh':
    command => "/usr/local/bin/privoxy-blocklist.sh -q",
    notify  => Service['privoxy']
  }
}