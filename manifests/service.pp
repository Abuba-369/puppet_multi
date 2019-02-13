# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_multi::service

class puppet_multi::service {
      service { 'puppetserver':
      name   => $::puppet_multi::service,
      ensure => $::puppet_multi::start,
      enable => $::puppet_multi::enable,
    }

}
