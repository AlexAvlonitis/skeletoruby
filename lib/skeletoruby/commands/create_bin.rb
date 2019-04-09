require 'fileutils'

module Skeletoruby
  module Commands
    class CreateBin
      def self.call(project_name)
        FileUtils.mkdir_p("#{project_name}/bin")
        FileUtils.touch("#{project_name}/bin/.keep")
      end
    end
  end
end
