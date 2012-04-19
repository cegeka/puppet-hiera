class hiera {

  file {'/etc/puppet/hiera.yaml':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/${module_name}/hiera.yaml",
  }

  package { 'rubygems-hiera':
    ensure   => present,
  }

  package { 'rubygems-hiera-puppet':
    ensure   => present,
    require  => Package['rubygems-hiera']
  }

}
