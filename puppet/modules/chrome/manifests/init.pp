class chrome {
  file { '/home/vagrant/chrome.sh':
  ensure => present,
  mode => '0755',
  source => 'puppet:///modules/chrome/chromedriver.sh',
  }
}
