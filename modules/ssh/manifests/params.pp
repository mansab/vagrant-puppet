class ssh:params {
case $operatingsystem {
      centos: { $package_name = "openssh-server" 
	  $conf_file = "/etc/ssh/sshd_config"
	  $service_name = "sshd"
	  }
      redhat: { $package_name = "openssh-server" 
	  $conf_file = "/etc/ssh/sshd_config" 
	  $service_name = "sshd"
	  }
      debian: { $package_name = "openssh-server" 
	  $conf_file = "/etc/ssh/sshd_config" 
	  $service_name = "sshd"
	  }
      ubuntu: { $package_name = "openssh-server" 
	  $conf_file = "/etc/ssh/sshd_config" 
	  $service_name = "sshd"
	  }
	  solaris: { $package_name = "openssh" 
	  $conf_file = "/etc/ssh/sshd_config" 
	  $service_name = "sshd"
	  }
      default: { fail("Unrecognized operating system for openssh") }
    }
}