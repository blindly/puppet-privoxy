# Class: privoxy::service
#
#
class privoxy::service {
  service { 'privoxy':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package['privoxy']
  }
}