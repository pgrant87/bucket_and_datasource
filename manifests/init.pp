class testmodule{

user { 'paddy':
  ensure     => present,
  uid        => '1000',
  gid        => '1000',
  shell      => '/bin/bash',
  home       => '/home/mitchell'
}

}
