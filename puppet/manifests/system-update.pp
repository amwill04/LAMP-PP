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
