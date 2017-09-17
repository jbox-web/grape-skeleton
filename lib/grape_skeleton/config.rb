require 'grape_skeleton/settings'

module GrapeSkeleton
  module Config

    def self.app_name
      @app_name ||= GrapeSkeleton::Settings.application_name
    end

    def self.to_h
      {
        app_name: app_name,
        version:  GrapeSkeleton::VERSION,
      }
    end

  end
end
