class testmodule {

  dsc_virtualmemory {'c:':
    validation_mode => 'resource',
    dsc_initialsize => 1024,
    dsc_maximumsize => 8192,
    dsc_type => 'CustomSize',
    dsc_drive => 'c:',
  }

}
