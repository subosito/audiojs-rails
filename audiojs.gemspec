# -*- encoding: utf-8 -*-
require File.expand_path('../lib/audiojs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alif Rachmawadi"]
  gem.email         = ["subosito@gmail.com"]
  gem.description   = %q{Audio.js + Rails Asset Pipeline}
  gem.summary       = %q{audio.js is a drop-in javascript library that allows HTML5's <audio> tag to be used anywhere.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "audiojs"
  gem.require_paths = ["lib"]
  gem.version       = Audiojs::VERSION
end
