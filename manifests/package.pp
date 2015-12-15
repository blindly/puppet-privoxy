# Class: privoxy::package
#
#
class privoxy::package {
  package { 'privoxy':
    ensure => installed,
  }
}