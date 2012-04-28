# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "compass/photoshop-drop-shadow/version"

Gem::Specification.new do |s|
  s.name        = 'compass-photoshop-drop-shadow'
  s.version     = Compass::PhotoshopDropShadow::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "Compass mixin for using the Drop Shadow values that Photoshop uses."
  s.description = "Compass mixin for using the Drop Shadow  values that Photoshop uses to create CSS3 box-shadow. Making it easier to convert PSD files to CSS."
  s.homepage    = 'https://github.com/heygrady/compass-photoshop-drop-shadow'
  s.authors     = ["Grady Kuhnline"]
  s.email       = ["github@heygrady.net"]

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency("compass")
end