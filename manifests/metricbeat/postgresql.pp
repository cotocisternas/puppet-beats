# POSTGRESQL
class beats::metricbeat::postgresql (
  $period           = $::beats::metricbeat::period,
) {
  concat::fragment {'metricbeat-postgresql':
    target  => '/etc/metricbeat/metricbeat.yml',
    content => template('beats/metricbeat/modules/postgresql.erb'),
    order   => 10,
  }
}
