# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zsh_history/version'

Gem::Specification.new do |gem|
  gem.name          = "zsh_history"
  gem.version       = ZshHistory::VERSION
  gem.authors       = ["Ernie Brodeur"]
  gem.email         = ["ebrodeur@ujami.net"]
  gem.description   = "Search multiple zsh history files at once."
  gem.summary       = "Useful if you run multiple terminals each with its own history file."
  gem.homepage      = "https://www.github.com/erniebrodeur/zshhistory"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
