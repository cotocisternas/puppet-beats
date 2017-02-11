# Mysql
class beats::protocols::mysql (
  $protocol             = 'mysql',
  $ports                = ['3306'],
  $send_request         = false,
  $send_response        = false,
  $transaction_timeout  = '10s'
) {
  concat::fragment {'protocols-mysql':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/packetbeat/protocols/protocols.database.erb'),
    order   => 11,
  }
}
