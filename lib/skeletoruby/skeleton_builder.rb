require_relative './commands/create_bin'
require_relative './commands/create_lib'
require_relative './commands/create_gemfile'
require_relative './commands/create_readme'
require_relative './commands/initialize_rspec'
require_relative './commands/prepare_gemfile'
require_relative './commands/prepare_readme'

module Skeletoruby
  class SkeletonBuilder
    def self.build(project_name)
      commands = [
        Skeletoruby::Commands::CreateBin,
        Skeletoruby::Commands::CreateLib,
        Skeletoruby::Commands::CreateGemfile,
        Skeletoruby::Commands::CreateReadme,
        Skeletoruby::Commands::InitializeRspec,
        Skeletoruby::Commands::PrepareGemfile,
        Skeletoruby::Commands::PrepareReadme
      ]

      new(project_name).call(commands)
    end

    def initialize(project_name)
      @project_name = project_name
    end

    def call(commands = [])
      commands.each { |command| command.call(@project_name) }
    end
  end
end