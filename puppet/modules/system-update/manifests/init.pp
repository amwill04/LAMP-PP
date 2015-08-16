class system-update {
  exec { 'apt-get update':
    command => 'sudo apt-get update -y',
  }

  $sysPackages = [ "build-essential" ]
    package { $sysPackages:
    ensure => "installed",
    require => Exec['apt-get update'],
  }

  exec { 'apt-get upgrade':
  command => "sudo apt-get upgrade -y",
  require => Exec['apt-get update'],
  }
}

class system-packages {
  exec { "unzip":
  command => "sudo apt-get install unzip -y",
  require => Exec["apt-get upgrade"]
  }
}

class profile-update {
  file { "/home/vagrant/profile.sh":
  ensure => present,
  mode => "0755",
  source => "puppet:///modules/system-update/profile.sh",
  }

  exec { "profile":
  command => "sudo sh /home/vagrant/profile.sh",
  require => File["/home/vagrant/profile.sh"]
  }
}
