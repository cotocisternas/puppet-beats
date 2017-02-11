# Redis
class beats::protocols::redis (
  $ports                = '6379',
  $send_request         = false,
  $send_response        = false,
  $transaction_timeout  = '10s',
) {
  concat::fragment {'protocols-redis':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/packetbeat/protocols/protocols.redis.erb'),
    order   => 11,
  }
}
