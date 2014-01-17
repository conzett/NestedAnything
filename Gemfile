source "https://rubygems.org"
gemspec

group :development, :test do

  gem 'appraisal', github: 'jwaldrip/appraisal'

  platforms :rbx do
    gem 'racc'
    gem 'rubysl', '~> 2.0'
    gem 'psych'
  end

  platforms :jruby do
    gem 'activerecord-jdbcsqlite3-adapter'
  end
 
  platforms :ruby do
    gem 'sqlite3'
  end
end
