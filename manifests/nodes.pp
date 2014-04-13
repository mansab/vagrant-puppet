class base {
	include sudo, ssh
	}

node 'puppet.server' {
	include base
	}

node 'puppet.slave.web' {
	include base
	include apache
	
	apache::vhost { 'www.example.com':
	port => 80,
	docroot => '/var/www/www.example.com',
	ssl => false,
	priority => 10,
	serveraliases => 'home.example.com',
	}
	}

node 'puppet.slave.db' {
	include base
	include mysql
	}

node 'puppet.slave.mail' {
	include base
	include postfix
	}