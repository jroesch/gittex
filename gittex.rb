# A tool for collaborative writing using Git and Tex.
#
# Jared Roesch 2014

require 'rugged'

class GitTex
  attr_reader :repository

  def initialize(repository_path)
    if Dir.exists?(repository_path)
    @repository = Rugged::Repository.new(repository_path) if Dir.exists?(repository_path)
  end

  def self.in(repository_path)
    self.new(repository_path)
  end

  def with_command_line_args(args)
    # handles taking an array that represents raw
    # command line args and figures out what command
    # to run aganist the the gittex instance
  end
end

class GitTexError; end

class RepositoryNotFound < GitTexError
  def initialize(path)
  end
end

current_dir = Dir.pwd

def run_with_error_handling
  begin
    yield
  rescue GitTexError => e
    puts e.msg
  end
end

GitTex.in(current_dir).with_command_line_args(ARGV)

