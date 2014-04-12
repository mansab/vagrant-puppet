class ssh::config {
	file { $ssh::params::conf_file:
	ensure => present,
	owner => 'root',
	group => 'root',
	mode => 600,
	source => "puppet://$puppetserver/modules/ssh/sshd_config",
	require => Class["ssh::install"],
	notify => Class["ssh::service"],
	}
}
