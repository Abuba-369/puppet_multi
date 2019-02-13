# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_multi
class puppet_multi  (
  $version        = 'present',
  $enable         = true,
  $start          = true,
  $package        = 'puppetserver',
  $service        = 'puppetserver',
  $manage_service = true,
  $config         = {},

) {
  anchor { 'puppet_multi::begin': }
  -> class { '::puppet_multi::install': }
  -> class { '::puppet_multi::config': }
  ~> class { '::puppet_multi::service': }
  -> anchor { 'puppet_multi::end': }
}

 

