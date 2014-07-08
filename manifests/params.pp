class kait_practice::params {

    case $::operatingsystem {
    'debian': { notice("You are working on a ${operatingsystem}") }
    'ubuntu': { notice("some text ${operatingsystem}") }
    'CentOS': { notice("Some text about the operating system ${operatingsystem}")
                $casemessage = 'this is a message inside of the centos case in params.pp'
     }
    default:  { notice("you do not have an operating system") }
  }
}
