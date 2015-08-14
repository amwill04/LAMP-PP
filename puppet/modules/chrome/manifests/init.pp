class chromedriver {
  file { "/home/vagrant/chromedriver.sh":
  ensure => present,
  mode => "0755",
  source => "puppet:///modules/chrome/chromedriver.sh",
  }

  exec { "install chromedriver":
  command => "sudo sh /home/vagrant/chromedriver.sh",
  require => File["/home/vagrant/chromedriver.sh"]}
}

class chrome {
  file {"/home/vagrant/chrome.sh":
  ensure => present,
  mode => "0755",
  source => "puppet:///modules/chrome/chrome.sh"}
}
