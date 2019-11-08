module PodcastAgentParser

  class Agent
    attr_accessor :app, :device, :os, :bot

    def initialize(app, device, os, bot)
      @app    = app
      @device = DeviceNames.key?(device) ? DeviceNames[device] : (device.nil? ? nil : device.capitalize)
      @os     = OsNames.key?(os) ? OsNames[os] : (os.nil? ? nil : os.capitalize)
      @bot    = bot.nil? ? false : bot
    end
  end

end
