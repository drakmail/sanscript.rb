# frozen_string_literal: true

begin
  require "bundler/gem_tasks"
rescue LoadError
  nil
end

# Ensure missing RSpec development dependency doesn't kill gem install.
begin
  require "rspec/core/rake_task"
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
  nil
end

# Ensure missing Rubocop development dependency doesn't kill gem install.
begin
  require "rubocop/rake_task"
  RuboCop::RakeTask.new
rescue LoadError
  nil
end
