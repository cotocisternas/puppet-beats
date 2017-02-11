# HTTP
class beats::protocols::http (
  $ports                = ['80', '8080', '8000'],
  $hide_keywords        = [],
  $send_headers         = false,
  $include_body_for     = [],
  $split_cookie         = true,
  $real_ip_header       = 'X-Forwarded-For',
  $send_request         = false,
  $send_response        = false,
  $transaction_timeout  = '10s',
  $max_message_size     = '10485760',
) {
  concat::fragment {'protocols-http':
    target  => '/etc/packetbeat/packetbeat.yml',
    content => template('beats/packetbeat/protocols/protocols.http.erb'),
    order   => 11,
  }
}
