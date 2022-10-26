require 'thor'
require 'R2'

class CLI < Thor

  desc "get AWS_ENV", "Determines the current set of AWS environment variables"
  def get_aws_env
    puts R2::R2.configure_aws
  end

end