class chrome {
  file { '/home/vagrant/chrome.sh':
  ensure => present,
  owner => 'root',
  group => 'root',
  mode => '0755',
  source => 'puppet:///modules/chrome/chromedriver.sh',
  }
}
