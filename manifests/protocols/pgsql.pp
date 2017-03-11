# Postgres
class beats::protocols::pgsql (
  $protocol             = 'pgsql',
  $ports                = ['5432'],
  $send_request         = false,
  $send_response        = false,
  $transaction_timeout  = '10s'
) {
  concat::fragment {'protocols-pgsql':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/packetbeat/protocols/protocols.database.erb'),
    order   => 11,
  }
}
