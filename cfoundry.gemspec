# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cfoundry/version"

Gem::Specification.new do |s|
  s.name        = "new_cfoundry"
  s.version     = CFoundry::VERSION.dup
  s.authors     = ["CI-Platform-Team", "Toshio Maki"]
  s.license       = "Apache 2.0"
  s.email       = ["kirika.k2@gmail.com"]
  s.homepage    = "http://github.com/kirikak2/cfoundry"
  s.summary     = %q{
    High-level library for working with the Cloud Foundry API.
    This is fork from https://github.com/cloudfoundry-attic/cfoundry
  }

  s.files         = `git ls-files`.split($/) + Dir.glob("vendor/errors/**/*")
  s.test_files    = Dir.glob("spec/**/*")
  s.require_paths = %w[lib]

  s.add_dependency "activemodel", "<6.0.0", ">= 3.2.13"
  s.add_dependency "cf-uaa-lib", "~> 3.8.0"
  s.add_dependency "jwt", "~> 1.5"
  s.add_dependency "multi_json", "~> 1.7"
  s.add_dependency "multipart-post", "~> 1.1"
  s.add_dependency "rubyzip", "~> 0.9"

  s.add_development_dependency 'bundler', '~> 1.9'
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-stack_explorer"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency "gem-release"
  s.add_development_dependency "json_pure", "~> 1.8"
  s.add_development_dependency "rake", ">= 0.9", "< 11.0"
  s.add_development_dependency "rspec", "~> 2.14"
  s.add_development_dependency "shoulda-matchers", "~> 2.5.0"
  s.add_development_dependency "timecop", "~> 0.6.1"
  s.add_development_dependency "webmock", "~> 1.9"
  s.add_development_dependency "putsinator"
  s.add_development_dependency "version"
end
