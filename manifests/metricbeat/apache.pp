# APACHE
class beats::metricbeat::apache (
  $period           = $::beats::metricbeat::period,
) {
  concat::fragment {'metricbeat-apache':
    target  => '/etc/metricbeat/metricbeat.yml',
    content => template('beats/metricbeat/modules/apache.erb'),
    order   => 10,
  }
}
