# -*- encoding: utf-8 -*-
require File.dirname(__FILE__) + '/lib/slim/version'
require 'date'

Gem::Specification.new do |s|
  s.name              = 'gittex'
  s.version           = Slim::VERSION
  s.date              = Date.today.to_s
  s.authors           = ['Jared Roesch']
  s.email             = ['roeschinc@gmail.com']
  s.summary           = 'A tool for writing with Tex and Git.'
  s.description       = 'A tool for writing with Tex and Git.'
  s.homepage          = 'http://jroesch.com'
  s.rubyforge_project = s.name
  s.license           = 'MIT'
  s.files             = %w( README.md LICENSE )
  s.files             += Dir.glob("lib/**/*.rb")
  s.executables       = Dir.glob("bin/*.rb")
  s.require_paths     = %w(lib)
end
