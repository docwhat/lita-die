Gem::Specification.new do |spec|
  spec.name          = 'lita-die'
  spec.version       = '1.0.1'
  spec.authors       = ['Christian Höltje']
  spec.email         = ['docwhat@gerf.org']
  spec.description   = "Adds 'die' command"
  spec.summary       = "Adds a 'die' command accessable only by admins."
  spec.homepage      = 'https://github.com/docwhat/lita-die'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 4.4'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'rubocop'
end
