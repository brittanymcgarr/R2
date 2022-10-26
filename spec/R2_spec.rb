# frozen_string_literal: true

require 'R2'
require 'R2/aws_environment'

RSpec.describe R2 do
  it "has a version number" do
    expect(R2::VERSION).not_to be nil
  end

  it "returns complete" do
    expect(R2::R2.run).to eql("Complete")
  end

  it "creates aws environment" do
    expect(R2::R2.configure_aws.is_a?(R2::AWSEnvironment)).to eql(true)
  end
end
