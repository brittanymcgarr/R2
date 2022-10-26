# frozen_string_literal: true
require_relative "R2/version"

require 'R2/aws_environment'

module R2
  class Error < StandardError;
  end

  class R2
    def self.run
      puts("Running...Beep-boop...")
      return "Complete"
    end

    def self.configure_aws
      @aws = AWSEnvironment.new
      @aws.check_env_credentials
      return @aws
    end
  end
end
