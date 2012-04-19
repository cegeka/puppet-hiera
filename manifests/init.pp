class hiera {

  file {'/etc/puppet/hiera.yaml':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => "puppet:///modules/${module_name}/hiera.yaml",
  }

  package { 'cegeka-hiera':
    ensure   => installed,
  }

  package { 'cegeka-hiera-puppet':
    ensure   => installed,
    require  => Package['cegeka-hiera']
  }

}
