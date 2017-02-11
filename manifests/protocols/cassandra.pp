# CASSANDRA
class beats::protocols::cassandra (
  $ports                        = ['9042'],
  $send_request                 = true,
  $send_request_header          = true,
  $send_response                = true,
  $send_response_header         = true,
  $compressor                   = 'snappy',
  $ignored_ops                  = ['SUPPORTED','OPTIONS']
) {
  concat::fragment {'protocols-cassandra':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/packetbeat/protocols/protocols.cassandra.erb'),
    order   => 11,
  }
}
