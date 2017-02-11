# AMQP
class beats::protocols::amqp (
  $ports                        = ['5672'],
  $max_body_length              = 1000,
  $parse_headers                = false,
  $parse_arguments              = false,
  $hide_connection_information  = true,
  $send_request                 = false,
  $send_response                = false,
  $transaction_timeout          = '10s',
) {
  concat::fragment {'protocols-amqp':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/packetbeat/protocols/protocols.amqp.erb'),
    order   => 11,
  }
}
