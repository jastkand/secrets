require 'secrets/version'
require 'hashie'

module Secrets
  module Config
    class Configuration
      attr_accessor :secrets_file

      def initialize
        @secrets_file = 'secrets.yml'
      end
    end

    class << self
      attr_writer :configuration
    end

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.configure
      yield(configuration)
    end
  end

  class << self
    def options
      secrets_file = Config.configuration.secrets_file

      @options ||= {}
      @options[secrets_file] ||= Hashie::Mash.load(secrets_file)
      @options[secrets_file]
    end

    def method_missing(method_sym, *arguments, &block)
      if options.respond_to?(method_sym)
        options.send(method_sym, arguments.first)
      else
        super
      end
    end
  end
end
