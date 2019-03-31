require 'open-uri'
require 'avoid/programming_lang'
require 'avoid/gitignore_source'
require 'avoid/string_helper'

module Avoid

  def self.from_cmdline(args)
    if ARGV.empty?
      if File.exist? '.gitignore'
        raise ArgumentError, "#{"Error:".red} Gitignore already exists!"
      else
        programmingLang = ProgrammingLang.retrieve
        puts "> Project configuration detected: #{programmingLang.yellow}"
        url = GitignoreSource.gitignoreURL programmingLang

        File.write '.gitignore', open(url).read
        puts "#{"Success:".green} #{programmingLang} gitignore file added to the project"
      end
    else
      #process_locfile(ARGV.shift)
    end
  end
end
