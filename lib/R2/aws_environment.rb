require 'active_support/inflector'

DEFAULT_AWS_REGION = "us-east-1"

module R2

  class AWSEnvironment
    attr_accessor :aws_access_key_id, :aws_secret_access_key, :region

    def initialize
      @aws_access_key_id = ""
      @aws_secret_access_key = ""
      @region = DEFAULT_AWS_REGION
    end

    def check_env_credentials
      if ENV["AWS_ACCESS_KEY_ID"].nil?
        puts("AWS: AWS_ACCESS_KEY_ID not found. Attempting to set environment variable...")
      else
        @aws_access_key_id = ENV["AWS_ACCESS_KEY_ID"]
      end

      if ENV["AWS_SECRET_ACCESS_KEY"].nil?
        puts("AWS: AWS_SECRET_ACCESS_KEY not found. Attempting to set environment variable...")
      else
        @aws_secret_access_key = ENV["AWS_SECRET_ACCESS_KEY"]
      end

      if ENV["AWS_REGION"].nil?
        puts("AWS: AWS_REGION not found. Attempting to set environment variable...")
      else
        @region = ENV["AWS_REGION"]
      end
    end
  end

  def read_aws_local_credentials
    if Dir.exists?('~/.aws/credentials')
      file = File.open('~/.aws/credentials')
      file_data = file.readlines.map(&:chomp)

      if file_data.length > 2
        ENV["AWS_ACCESS_KEY_ID"] = @aws_access_key_id = file_data[1].split('=').strip
        ENV["AWS_SECRET_ACCESS_KEY"] = @aws_secret_access_key = file_data[2].split('=').strip
        return true
      end
    end
    return false
  end
end