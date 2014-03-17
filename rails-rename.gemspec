# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.name          = 'rails-rename'
  gem.version       = '1.0.0'
  gem.license       = 'MIT'
  gem.authors       = ['Mark Miyashita']
  gem.email         = %w(negativetwelve@gmail.com)
  gem.homepage      = 'https://github.com/negativetwelve/rails-rename'
  gem.description   = 'This library allows you to rename Rails 4 application using a single command.'
  gem.summary       = 'A library to rename your Rails 4 application.'

  gem.add_dependency 'rails','>= 4.0.0'
  gem.add_development_dependency "rake"

  gem.rubyforge_project = 'rails-rename'

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = %w(lib)
end
