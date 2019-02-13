# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include puppet_multi::config


class puppet_multi::config {

	file { '/etc/puppetlabs/puppet/puppet.conf':
                ensure  => file,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                source  => 'puppet:///modules/puppet_multi/puppet.conf',
                }
	file { '/etc/sysconfig/puppetserver':
                ensure   => file,
                mode     => '0644',
                owner    => 'puppet',
                group    => 'puppet',
                source  => 'puppet:///modules/puppet_multi/puppetserver',
                }

	file { '/etc/puppetlabs/puppetserver/services.d/ca.cfg':
                ensure  => file,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                source  => 'puppet:///modules/puppet_multi/ca.cfg',
                }
	file { '/opt/puppetlabs/server/apps/puppetserver/config/services.d/bootstrap.cfg':
                ensure  => file,
                mode    => '0644',
                owner   => 'puppet',
                group   => 'puppet',
                source  => 'puppet:///modules/puppet_multi/bootstrap.cfg',
                }
#	file { '/etc/puppetlabs/puppet/ssl/ca':
#                ensure  => directory,
#                mode    => '0644',
#                owner   => 'puppet',
#                group   => 'puppet',
#               source  => 'puppet:///modules/puppet_multi/ca',
#                }

}



