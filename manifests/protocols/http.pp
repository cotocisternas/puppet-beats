# HTTP
class beats::protocols::http (
  $http_ports           = ['80', '8080', '8000'],
  $hide_keywords        = [],
  $send_headers         = ['Host'],
  $split_cookie         = true,
  $real_ip_header       = 'X-Forwarded-For',
  $redact_authorization = false,
) {
  concat::fragment {'protocols-http':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/packetbeat/protocols/protocols.http.erb'),
    order   => 11,
  }
}
