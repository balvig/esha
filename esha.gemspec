# -*- encoding: utf-8 -*-
require File.expand_path('../lib/esha/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jens Balvig"]
  gem.email         = ["jens@balvig.com"]
  gem.description   = %q{Esha is a simple wrapper that makes the ESHA nutrition api a little easier to work with.}
  gem.summary       = %q{Simple wrapper for ESHA nutrition database}
  gem.homepage      = "https://github.com/balvig/esha"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "esha"
  gem.require_paths = ["lib"]
  gem.version       = Esha::VERSION

  gem.add_dependency "httparty"
  gem.add_development_dependency "rspec"
end
