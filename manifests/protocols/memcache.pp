# MEMCACHE
class beats::protocols::memcache (
  $ports                  = ['11211'],
  $parseunknown           = true,
  $maxvalues              = '-1',
  $maxbytespervalue       = 100,
  $udptransactiontimeout  = 1000,
  $send_request           = false,
  $transaction_timeout    = '10s'
) {
  concat::fragment {'protocols-memcache':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/packetbeat/protocols/protocols.memcache.erb'),
    order   => 11,
  }
}
