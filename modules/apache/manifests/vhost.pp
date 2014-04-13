define apache::vhost ( $port, $docroot, $ssl=true, $template='apache/vhost.conf.erb', $priority, $serveraliases = '' ) {
	include apache
	file { "/etc/httpd/conf.d/${priority}-${name}":
	content => template($template),
	owner => 'root',
	group => 'root',
	mode => '777',
	require => Class["apache::install"],
	notify => Class["apache::service"],
 	}

	file { "${docroot}":
	ensure => directory,
	owner => apache,
	group => apache,
	mode => 0644,
	require => Class ["apache::install"],
	}
}
