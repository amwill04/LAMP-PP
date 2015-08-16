class phantomjs {
  package {
    ["build-essential", "g++", "flex",
    "bison", "gperf", "ruby", "perl",
    "libsqlite3-dev", "libfontconfig1-dev",
    "libicu-dev", "libfreetype6", "libssl-dev",
    "libpng-dev", "libjpeg-dev", "python", "libx11-dev", "libxext-dev"]:
    ensure => "installed",
    require => Class ["git"]
  }
}

class install-phantomjs {

  file { "/home/vagrant/phantomjs.sh":
  ensure => present,
  require => Class ["phantomjs"],
  mode => "0755",
  source => "puppet:///modules/phantomjs/phantomjs.sh"
  }

  exec { "install phantomjs":
  command => "sudo sh /home/vagrant/phantomjs.sh",
  require => File["/home/vagrant/phantomjs.sh"],
  timeout => 0
  }
}
