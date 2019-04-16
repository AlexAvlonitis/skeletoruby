module Skeletoruby
  module Commands
    class PrepareGemfile
      def self.call(project_name)
        File.open("#{project_name}/Gemfile", 'w') do |file|
          file.puts "source 'https://rubygems.org'"
          file.puts ''
          file.puts "gem 'rspec'"
        end
      end
    end
  end
end
