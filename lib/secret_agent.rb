require 'secret_agent/agent'
require 'secret_agent/parser'

module SecretAgent
  DefaultPatternsPath = File.join(File.dirname(__FILE__), '../vendor/opawg/user-agents.json')
  OsNames = {
    'homepod os' => 'HomePod OS',
    'ios'     => 'iOS',
    'ipados'  => 'iPadOS',
    'macos'   => 'macOS',
    'watchos' => 'watchOS'
  }
  DeviceNames = {
    'pc' => 'PC',
    'tv' => 'TV'
  }
end
