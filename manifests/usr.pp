class usr{
  user { 'administrator':
    ensure             => 'present',
    comment            => 'administrator',
    shell              => '/bin/bash',
    groups             => [ 'adm', 'wheel' ],
    uid                => '1000',
    managehome         => true
  }

}
