class apache {
  package {"apache2":
  ensure => "installed",
  require => Exec["apt-get upgrade"]}
}
