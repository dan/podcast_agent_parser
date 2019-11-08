require 'podcast_agent_parser/agent'
require 'podcast_agent_parser/parser'

module PodcastAgentParser
  DefaultPatternsPath = File.join(File.dirname(__FILE__), '../vendor/opawg/user-agents.json')
  OsNames = {
    'homepod os'  => 'HomePod OS',
    'ios'         => 'iOS',
    'ipados'      => 'iPadOS',
    'macos'       => 'macOS',
    'watchos'     => 'watchOS'
  }
  DeviceNames = {
    'pc' => 'PC',
    'tv' => 'TV'
  }
end
