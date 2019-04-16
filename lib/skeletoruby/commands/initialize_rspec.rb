require 'fileutils'

module Skeletoruby
  module Commands
    class InitializeRspec
      def self.call(project_name)
        FileUtils.cd(project_name.to_s) do
          `bundle install`
          `rspec --init`
        end
      end
    end
  end
end
