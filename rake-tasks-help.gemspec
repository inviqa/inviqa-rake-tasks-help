# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'rake-tasks-help/version'

Gem::Specification.new do |spec|
  spec.name          = "rake-tasks-help"
  spec.version       = RakeTasksHelp::VERSION
  spec.authors       = ["Kieren Evans"]
  spec.email         = ["kevans+rake-tasks@inviqa.com"]

  spec.summary       = %q{Help task for Rake}
  spec.description   = %q{Help task for Rake}
  spec.homepage      = ""
  spec.licenses = ["MIT"]

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rake", ">= 10.0", "<= 12"

  spec.add_development_dependency "rspec", "~> 3.6"
end
