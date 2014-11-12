# -*- encoding: utf-8 -*-
require File.expand_path('../lib/audiojs/rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alif Rachmawadi"]
  gem.email         = ["subosito@gmail.com"]
  gem.description   = %q{Audio.js on Rails Asset Pipeline}
  gem.summary       = %q{audio.js is a drop-in javascript library that allows HTML5's <audio> tag to be used anywhere.}
  gem.homepage      = "https://github.com/subosito/audiojs-rails"
  gem.licenses      = ["MIT"]

  gem.files         = Dir["{lib,vendor}/**/*"] + ["Rakefile", "README.markdown"]
  gem.test_files    = Dir["test/**/*"]
  gem.name          = "audiojs-rails"
  gem.require_paths = ["lib"]
  gem.version       = Audiojs::Rails::VERSION

  gem.add_dependency 'railties', '>= 3.1'
  gem.add_development_dependency 'vendorer'
  gem.add_development_dependency 'tzinfo'
  gem.add_development_dependency 'sprockets-rails'
end
