class hiera {

  file {'/etc/puppet/hiera.yaml':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/${module_name}/hiera.yaml",
  }

  package { 'cegeka-hiera':
    ensure   => present,
  }

  package { 'cegeka-hiera-puppet':
    ensure   => present,
    require  => Package['cegeka-hiera']
  }

}
