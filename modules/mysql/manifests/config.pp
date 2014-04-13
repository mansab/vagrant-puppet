class mysql::config {
	file { "/etc/my.cnf":
	ensure => present,
	source => "puppet://$puppetserver/modules/mysql/my.cnf",
	owner => "mysql",
	group => "mysql",
	require => Class["mysql::install"],
	notify => Class["mysql::service"],
	}
	
	file { "/var/lib/mysql":
	owner => "mysql",
	gid => "mysql",
	recurse => true,
	require => File["/etc/my.cnf"],
	}
}
	