class mysql::instal {
	package { ["mysql-server", "mysql", "mysql-client"]:
	ensure => present,
	require => User["mysql"],
	}

user { "mysql":
	ensure => present,
	comment => "MySQL User",
	gid => "mysql",
	shell => "/bin/false",
	require => Group["mysql"],
	}
	
group { "mysql":
	ensure => present,
	}
}
	