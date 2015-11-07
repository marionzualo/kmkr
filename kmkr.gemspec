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
  spec.description   = <<-EOF
    kmkr is a CLI to create files prefixed by date (e.g. 20151031.md).
    It supports creating files with any file extension, date format and a suffix.
    This is useful for people that create a lot of files prefixed by dates and got tired of manually doing that themselves.
  EOF
  spec.homepage      = "https://github.com/marionzualo/kmkr"
  spec.license       = "mit"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'rdoc', '~> 4.2'
  spec.add_development_dependency 'aruba', '~> 0.8'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_dependency 'methadone', '~> 1.9'
  spec.add_development_dependency 'rspec', '~> 3'
end
