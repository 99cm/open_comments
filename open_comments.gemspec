# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform  = Gem::Platform::RUBY
  s.name      = 'open_comments'
  s.version   = '2.5.0'
  s.summary   = 'Add comment and message funtionality to Open'
  s.description = 's.summary'
  s.required_ruby_version = '>= 2.5.3'

  s.author    = 'Leo Wang'
  s.homepage  = 'https://github.com/99cm/open_comments'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path  = 'lib'
  s.requirements << 'none'

  open_version = '>= 2.5.0'
  s.add_dependency 'open_api', open_version
  s.add_dependency 'open_backend', open_version
  s.add_dependency 'open_core', spree_version
  s.add_dependency 'acts_as_commentable'

  s.add_development_dependency 'capybara', '~> 2.18'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3', '~> 1.3.6'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'database_cleaner'
end