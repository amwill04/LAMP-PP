class php {
  package {["php5", "libapache2-mod-php5", "php5-mcrypt",
            "php5-mysql", "php5-odbc", "php5-json"]:
  ensure => "installed",
  require => Exec["apt-get upgrade"]
  }
}
