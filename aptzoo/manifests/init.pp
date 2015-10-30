class aptzoo {
  package { "python-software-properties":
    ensure => "installed" 
  }
  class { 'apt': } 
# Example declaration of an Apt PPA
  apt::ppa{ 'ppa:serverdensity/zookeeper': }
# pin zookeeper
apt::pin { 'zoo':
  packages => 'zookeeper*',
  priority => 999,
  release  => 'o=LP-PPA-serverdensity/zookeeper' 
  }
}
