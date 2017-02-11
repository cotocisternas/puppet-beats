# ICMP
class beats::protocols::icmp (
  $enabled  = true
) {
  concat::fragment {'protocols-icmp':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/packetbeat/protocols/protocols.icmp.erb'),
    order   => 11,
  }
}
