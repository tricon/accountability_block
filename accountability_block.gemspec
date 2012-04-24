# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "accountability_block/version"

Gem::Specification.new do |s|
  s.name        = "accountability_block"
  s.version     = AccountabilityBlock::VERSION
  s.authors     = ["David Aaron Fendley"]
  s.email       = ["tricon@me.com"]
  s.homepage    = "http://triconium.com"
  s.summary     = %q{Accountability nags}
  s.description = %q{Adds accountability nags based on duration from last activity.}

  s.rubyforge_project = "accountability_block"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
