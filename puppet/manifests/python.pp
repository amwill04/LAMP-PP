class pip {
  package {["python-dev", "python-pip"]:
  ensure => ["installed"],
  require => Exec ['apt-get upgrade']
  }

  exec {
    "virtualenv" :
    command => "sudo pip install virtualenv",
    require => Package ["python-dev", "python-pip"]
  }

  exec {
    "virtuallenvwrapper" :
    command => "sudo pip install virtualenvwrapper",
    require => Exec ["virtualenv"]
  }
}
