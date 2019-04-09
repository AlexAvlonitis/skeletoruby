require 'fileutils'

module Skeletoruby
  module Commands
    class CreateLib
      def self.call(project_name)
        FileUtils.mkdir_p("#{project_name}/lib")
        FileUtils.touch("#{project_name}/lib/.keep")
      end
    end
  end
end
