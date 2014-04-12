class base {
	include sudo, ssh
	}

node 'puppet.server' {
	include base
	}

node 'puppet.slave.web' {
	include base
	}

node 'puppet.slave.db' {
	include base
	}

node 'puppet.slave.mail' {
	include base
	}