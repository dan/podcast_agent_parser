require 'json'

module SecretAgent

  class Parser
    def initialize
      @patterns_path = File.read(SecretAgent::DefaultPatternsPath)
    end

    def parse(user_agent_string)
      JSON.parse(@patterns_path).each do |pattern|
        pattern['user_agents'].each do |str|
          if Regexp.new(str).match(user_agent_string)
            return Agent.new(
              pattern['app'],
              pattern['device'],
              pattern['os'],
              pattern['bot']
            )
          end
        end
      end
      return nil
    end
  end

end