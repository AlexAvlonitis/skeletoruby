require_relative './skeleton_builder'

module Skeletoruby
  class ThorCommands < Thor
    desc 'new [Project]', 'It builds a ruby folder structure for a new project'
    def new(project_name)
      puts "Project (#{project_name}) is building..."

      Skeletoruby::SkeletonBuilder.build(project_name)

      say 'Done.'
    end
  end
end
