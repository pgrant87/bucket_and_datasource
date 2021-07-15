class testmodule {

  windowsfeature { 'ad_powershell':
    ensure => present,
    name => 'RSAT-AD-PowerShell',
  }

  dsc_computer { 'join_domain':
    dsc_name => 'localhost',
    dsc_domainname => 'test.com',
    dsc_joinou => 'test',
    dsc_credential => {
      'user' => 'testuser',
      'password' => Sensitive('testpassword'),
    },
  }

}
