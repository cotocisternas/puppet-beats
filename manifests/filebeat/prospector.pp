# Define::filebeat::prospector
# Creates prospectors for filebeat
define beats::filebeat::prospector (
  $input_type             = 'log',
  $paths                  = [],
  $encoding               = 'plain',
  $exclude_lines          = undef,
  $include_lines          = undef,
  $exclude_files          = undef,
  $fields                 = {},
  $fields_under_root      = false,
  $ignore_older           = '0',
  $document_type          = 'log',
  $scan_frequency         = '10s',
  $harvester_buffer_size  = '16384',
  $max_bytes              = '10485760',
  $json                   = {},
  $multiline              = {},
  $tail_files             = false,
  $symlinks               = false,
  $backoff                = '1s',
  $max_backoff            = '10s',
  $backoff_factor         = '2',
  $harvester_limit        = '0',
)
{
  concat::fragment {"prospector-${title}":
    target  => '/etc/filebeat/filebeat.yml',
    content => template('beats/filebeat/prospector.yml.erb'),
    order   => 17,
  }
}
