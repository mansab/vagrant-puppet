class apache::config {
	file { "/etc/httpd/conf/httpd.conf":
	ensure => present,
	source => "puppet://$puppetserver/modules/apache/httpd.conf",
	owner => "root",
   	group => "root",
    	mode => 0644,
	require => Class["apache::install"],
	notify => Class["apache::service"],
	}
}
