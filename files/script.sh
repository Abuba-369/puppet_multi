#!/bin/sh
echo "192.168.1.136 puppetca.zippyops.com"
rm -rf /etc/puppetlabs/puppet/ssl
/opt/puppetlabs/bin/puppet agent -t
scp /etc/puppetlabs/puppet/ssl/ca/ca_crl.pem root@192.168.1.35:/etc/puppetlabs/puppet/ssl/ca
scp /etc/puppetlabs/puppet/ssl/ca/ca_crt.pem root@192.168.1.35:/etc/puppetlabs/puppet/ssl/ca

