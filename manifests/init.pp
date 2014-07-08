class kait_practice (
  $dog = $kait_practice::params::casemessage,
  $param,
  $message = hiera('kitty')
) inherits kait_practice::params {

  #two file resources, that don't really do anything important
  #case statement, which is also useless
  #would like to make this a param class that uses hiera

   file { 'practice':
    ensure => 'file',
    path => '/etc/puppetlabs/puppet/pFolder/practice.pp',
    source => 'puppet:///modules/users/pfile.txt',

    }

  file { '/etc/puppetlabs/puppet/pFolder/':
    ensure => 'directory',
    force => true,
    before => File['practice'] 
  }
  
  notice ($message)
  notice ($param)
  notice ($dog)  
}
