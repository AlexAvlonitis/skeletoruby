module Skeletoruby
  module Commands
    class PrepareGemfile
      def self.call(project_name)
        File.open("#{project_name}/Gemfile", "w") { |file| file.puts "source 'https://rubygems.org'" }
      end
    end
  end
end
