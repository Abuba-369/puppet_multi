# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_multi::install

class puppet_multi::install {
     package { 'puppetserver':
     ensure => $::puppet_multi::version,
     name   => $::puppet_multi::package,
  }

}
