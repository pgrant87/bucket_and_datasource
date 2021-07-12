class testmodule {

dsc_virtualmemory {'c:':
dsc_initialsize => 1024,
dsc_maximumsize => 8192,
dsc_type => 'CustomSize',
dsc_drive => 'c:',
validation_mode => 'resource',
}

}
