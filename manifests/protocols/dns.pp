# DNS
class beats::protocols::dns (
  $ports    = ['53'],
  $include_authorities = true,
  $include_additionals = true
) {
  concat::fragment {'protocols-dns':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/protocols/protocols.dns.erb'),
    order   => 14,
  }
}
