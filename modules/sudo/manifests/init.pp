class sudo {
package { sudo:
ensure => present,
}
if $operatingsystem == "CentOS" {
package { "sudo":
ensure => present,
require => Package["sudo"],
}
}
file { "/etc/sudoers":
owner => "root",
group => "root",
mode => 0440,
source => "puppet://$puppetserver/modules/sudo/etc/sudoers",
require => Package["sudo"],
}
}