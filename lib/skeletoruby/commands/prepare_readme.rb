module Skeletoruby
  module Commands
    class PrepareReadme
      def self.call(project_name)
        File.open("#{project_name}/README.md", "w") { |file| file.puts "## #{project_name.upcase}" }
      end
    end
  end
end
