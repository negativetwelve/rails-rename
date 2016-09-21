# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.name          = 'rails-rename'
  gem.version       = '2.0.0'
  gem.license       = 'MIT'
  gem.authors       = ['Mark Miyashita']
  gem.email         = %w(negativetwelve@gmail.com)
  gem.homepage      = 'https://github.com/negativetwelve/rails-rename'
  gem.description   = 'This library allows you to rename Rails 5 application using a single command.'
  gem.summary       = 'A library to rename your Rails 5 application.'

  gem.add_runtime_dependency 'rails', '~> 5.0', '>= 5.0.0'
  gem.add_development_dependency "rake", '~> 0'

  gem.rubyforge_project = 'rails-rename'

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.require_paths = %w(lib)
end
