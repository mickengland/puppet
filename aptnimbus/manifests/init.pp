class aptzoo {
  package { "python-software-properties":
    ensure => "installed" 
  }
  class { 'apt': } 
# Example declaration of an Apt PPA
  apt::ppa{ 'ppa:serverdensity/storm': }
# pin zookeeper
apt::pin { 'storm':
  packages => 'apache-storm*',
  priority => 999,
  release  => 'o=LP-PPA-serverdensity/storm' 
  }
}
