require 'fileutils'

module Skeletoruby
  module Commands
    class CreateGemfile
      def self.call(project_name)
        FileUtils.touch("#{project_name}/Gemfile")
      end
    end
  end
end
