# DNS
class beats::protocols::dns (
  $ports                = ['53'],
  $include_authorities  = true,
  $include_additionals  = true,
  $send_request         = false,
  $send_response        = false,
) {
  concat::fragment {'protocols-dns':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/packetbeat/protocols/protocols.dns.erb'),
    order   => 11,
  }
}
