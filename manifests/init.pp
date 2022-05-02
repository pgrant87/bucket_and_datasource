class bucket_and_datasource{

  $token = Sensitive('yOO2N--1Je_uwP68bQlLuXYSK24tfk2wsWu9dpVqSQk8Y3iU0mtzQmeJDmlYDKSA5Ri83lRCGOhumLEkRZlVxA==')
  
  influxdb_bucket {'customer_bucket':
    ensure => present,
    org    => 'puppetlabs',
    token  => $token,
  }

  grafana_datasource {'customer_datasource':
    grafana_user     => 'admin',
    grafana_password => 'admin',
    grafana_url      => "http://${facts['fqdn']}:3000",
    type             => 'influxdb',
    # This must match the namevar of the influxdb_bucket resource
    database         => 'customer_bucket',
    url              => "https://${facts['fqdn']}:8086",
    access_mode      => 'proxy',
    is_default       => false,
    json_data        => {
      httpHeaderName1 => 'Authorization',
      httpMode        => 'GET',
      tlsSkipVerify   => true
    },
    secure_json_data => {
      httpHeaderValue1 => 'Token 6vtOFbN_3IEM9ts_AuBYCgP-DSjVEacxJIxnggTU-SQLskR8OzW3vY76Tvsf-rzBJfgaurKhPZiH6FstgNahaA==',
    },
  }
}
