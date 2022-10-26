# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

GEM_NAME = "R2"
GEM_VERSION = "0.1.0"

RSpec::Core::RakeTask.new(:spec)

task :default => :build

task :build do
  system "gem build " + GEM_NAME + ".gemspec"
end

task :install => :build do
  system "gem install " + GEM_NAME + "-" + GEM_VERSION + ".gem"
end

task :publish => :build do
  system "gem push " + GEM_NAME + "-" + GEM_VERSION + ".gem"
end

task :clean do
  system "rm *.gem"
end
