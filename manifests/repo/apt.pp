# Setup the official repo
class beats::repo::apt() {

  include ::apt
  Class['apt::update'] -> Package['metricbeat']
  Class['apt::update'] -> Package['filebeat']
  Class['apt::update'] -> Package['packetbeat']

  apt::source { 'elastic-beats':
    comment  => 'Official Elastic beats repositories',
    location => 'https://artifacts.elastic.co/packages/5.x/apt',
    release  => 'stable',
    repos    => 'main',
    key      => {
      id     => '46095ACC8548582C1A2699A9D27D666CD88E42B4',
      source => 'https://artifacts.elastic.co/GPG-KEY-elasticsearch'
    },
    include  => {
      'deb'  => true,
      'src'  => false,
    }
  }


}
