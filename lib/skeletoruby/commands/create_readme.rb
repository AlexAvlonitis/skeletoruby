require 'fileutils'

module Skeletoruby
  module Commands
    class CreateReadme
      def self.call(project_name)
        FileUtils.touch("#{project_name}/README.md")
      end
    end
  end
end
