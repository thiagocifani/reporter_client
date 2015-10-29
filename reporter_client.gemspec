# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reporter_client/version'

Gem::Specification.new do |s|
  s.name        = "reporter_client"
  s.version     = ReporterClient::VERSION
  s.authors     = ["Thiago Cifani"]
  s.summary     = %q{Client to consume Reporter Server}
  s.description = %q{client to create reports with jasper}
  s.email       = "cifani.thiago@gmail.com"
  s.homepage    = "https://github.com/thiagocifani/reporter_client"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
