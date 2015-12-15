# Class: privoxy
#
#
class privoxy {

  class {'privoxy::package': }
  ->
  class {'privoxy::service': }
  ->
  class {'privoxy::config': }

}