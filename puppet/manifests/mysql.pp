class mysql {
  exec { 'apt-get mysql-connector':
  command => "sudo apt-get install python-mysql.connector -y",
  require => Exec['apt-get upgrade']
  }
}
