require 'thor'
require 'R2'

module R2
  class CLI < Thor

    desc "configure AWS_ENV", "Determines the current set of AWS environment variables"
    def configure_aws
      puts R2.configure_aws
    end

  end
end
