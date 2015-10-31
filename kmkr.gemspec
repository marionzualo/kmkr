# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kmkr/version'

Gem::Specification.new do |spec|
  spec.name          = "kmkr"
  spec.version       = Kmkr::VERSION
  spec.authors       = ["Mário Nzualo"]
  spec.email         = ["mario.nzualo@gmail.com"]
  spec.summary       = %q{CLI to create files prefixed by date}
  spec.homepage      = "https://github.com/marionzualo/kmkr"
  spec.license       = "mit"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('pry')
  spec.add_dependency('methadone', '~> 1.9.1')
  spec.add_development_dependency('rspec', '~> 3')
end
