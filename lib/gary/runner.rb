require "thor"
require "rake"

module Gary
  class Runner
    include Thor::Base
    include Thor::Actions
    include Rake::DSL

    source_root Dir.pwd

    def run(file)
      src  = File.read(file)
      file = file.gsub(/gary/) { "rb" }

      create_file file
      append_to_file file, Parser.parse(src).join(" ")

      verbose(false) do
        begin
          sh "ruby #{file}"
        rescue
        end
      end

      remove_file file
    end
  end
end
